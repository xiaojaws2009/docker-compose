package answer

import (
	"encoding/json"
	"god/chat/entity"
	"god/core/log"
	"god/uitils"
)

var (
	WelcomeMessage = []byte("欢迎来到公考雷达客服中心！")
	SeatRegisterMessage = []byte("座席已接入成功！")
	SeatNotOnlineMessage = []byte("抱歉，客服人员未在线，请您耐心等待")
	NotOnlineMessage = []byte("抱歉，对方已下线，请重新选择聊天人员")
	ChatEndMessage = []byte("本次会话已结束")
	SendFailMessage = []byte("发送消息失败，数据异常")
	AcceptSuccessSendSeatMessage = []byte("你好，我有问题想咨询您？")
)

func Message(uuid string, seatId int, contents []byte) []byte {
	origin := 0 // 消息所属 1:客户 2:坐席 0:系统消息 -1:只发给自已看的系统消息，目前只用于队列判断不入库保存

	messageId := uitils.GetMessageId()

	msg := entity.WsMessage{
		Event:"message",
		Uuid:uuid,
		SeatId:seatId,
		Data:entity.WsMessageData{MessageId:messageId, DataType:"text", Origin:int8(origin), Contents:string(contents)},
	}
	b, _ := json.Marshal(msg)
	log.Info.Println(string(b))
	return b
}