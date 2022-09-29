package chat

import (
	"god/chat/answer"
	"god/core/db"
	"god/core/log"
	"god/model"
)

// 坐席接入
func ServiceSeatRegister(client *SeatClient) {
	// 发送坐席自己欢迎消息
	client.Send <- answer.Message("", client.SeatId, answer.SeatRegisterMessage)

	seat := model.KefuSeat{}
	db.DB.Model(&seat).Where("id = ?", client.SeatId).Update("online", 1)
}

// 坐席离线
func ServiceSeatUnregister(client *SeatClient) {
	// 发送消息给当前所有在线的客户
	for _, c := range client.Custs {
		contents := answer.Message(c.Uuid, c.SeatId, answer.ChatEndMessage)
		log.Info.Printf(string(contents))
		c.Send <- contents
	}

	// 更新坐席状态
	seat := model.KefuSeat{}
	db.DB.Model(&seat).Where("id = ?", client.SeatId).Update("online", 0)
}