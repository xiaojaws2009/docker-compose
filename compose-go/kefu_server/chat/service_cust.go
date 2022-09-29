package chat

import (
	"god/chat/answer"
	"god/core/db"
	"god/core/queue"
	"god/model"
)

// 客户端接入
func ServiceCustRegister(client *CustClient) {
	if _,ok := client.Hub.Seats[client.SeatId]; ok {
		// 发给坐席消息
		contents := answer.Message(client.Uuid, client.SeatId, answer.AcceptSuccessSendSeatMessage)
		client.Hub.Seats[client.SeatId].Send <- contents

		// 加入到坐席链表中
		client.Hub.Seats[client.SeatId].Custs[client.Uuid] = client
	}

	// 发送欢迎消息
	seat := model.KefuSeat{}
	db.DB.Find(&seat, client.SeatId)
	contents := answer.Message(client.Uuid, client.SeatId, answer.WelcomeMessage)
	if seat.PhraseStart != "" {
		contents = answer.Message(client.Uuid, client.SeatId, []byte(seat.PhraseStart))
		client.Send <- contents  // 发送欢迎消息
	} else {
		client.Send <- contents  // 发送欢迎消息
	}

	// 保存到队列中保存到数据库当中
	queue.MessageQueue.Push(contents)

	// 更新相关数据
	cust := model.KefuCust{}
	db.DB.Where("uuid = ? and seat_id = ?", client.Uuid, client.SeatId).Find(&cust)
	if cust.Id == 0 {
		cust.Uuid = client.Uuid
		cust.SeatId = client.SeatId
		cust.UserId = client.UserId
		cust.Nickname = client.Nickname
		cust.Avatar = client.Avatar
		cust.Online = 1
		cust.Status = 1
		db.DB.Create(&cust)
	} else {
		cust.Nickname = client.Nickname
		cust.Avatar = client.Avatar
		cust.Online = 1
		cust.SeatId = client.SeatId
		db.DB.Save(&cust)
	}
}

// 客户端离线
func ServiceCustUnregister(client *CustClient) {
	// 更新离线状态
	cust := model.KefuCust{}
	db.DB.Model(&cust).Where("uuid = ? and seat_id = ?", client.Uuid, client.SeatId).Update("Online", 0)

	if _,ok := client.Hub.Seats[client.SeatId]; ok {
		// 发给坐席消息
		contents := answer.Message(client.Uuid, client.SeatId, answer.ChatEndMessage)
		client.Hub.Seats[client.SeatId].Send <- contents

		// 删除坐席链表中
		delete(client.Hub.Seats[client.SeatId].Custs, client.Uuid)
	}
}