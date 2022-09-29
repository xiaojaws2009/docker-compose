package controller

import (
	"encoding/json"
	"god/chat/entity"
	"god/core/db"
	"god/core/log"
	"god/core/queue"
	"god/model"
	"time"
)

// 保存消息到数据库  wsMessage.Data.Origin == -1 时，信息将丢弃不入库
func SaveMessageToDatabase()  {

	for {
		data := queue.MessageQueue.Pop()
		if data != nil {
			contents := data.([]byte)

			wsMessage := entity.WsMessage{}
			err := json.Unmarshal(contents, &wsMessage)
			if err == nil && wsMessage.Data.Origin != -1 {
				dataType := wsMessage.Data.DataType
				messageType := 0
				if dataType == "text" {
					messageType = 0
				} else if dataType == "image" {
					messageType = 1
				} else if dataType == "voice" {
					messageType = 3
				} else if dataType == "video" {
					messageType = 2
				}

				// 获取坐席信息
				seat := model.KefuSeat{}
				db.DB.First(&seat, wsMessage.SeatId)
				if seat.Id == 0 {
					continue
				}

				message := model.KefuMessage{}
				message.MessageId = wsMessage.Data.MessageId
				message.Uuid = wsMessage.Uuid
				message.UserId = seat.UserId
				message.SeatId = wsMessage.SeatId
				message.Origin = wsMessage.Data.Origin					// 发送者，1:客户 2:坐席 0系统 -1:丢弃掉的
				message.Type = int8(messageType)						//消息类型0:文本 1:图片 2:video 3:voice
				message.Content = wsMessage.Data.Contents
				message.CreateTimeAt = time.Now()
				db.DB.Create(&message)

				// 更新最后聊天时间
				if message.Uuid != "" && message.SeatId > 0 {
					cust := model.KefuCust{}
					db.DB.Model(&cust).Where("uuid = ? AND seat_id=?", message.Uuid, message.SeatId).Update("chat_time", time.Now().Unix())
				}

				log.Info.Println("SaveMessageToDatabase message:", message.Content)
			} else {
				log.Error.Println("SaveMessageToDatabase json.Unmarshal", err)
			}

		} else {
			time.Sleep(time.Duration(3) * time.Second)
			break
		}
	}
}