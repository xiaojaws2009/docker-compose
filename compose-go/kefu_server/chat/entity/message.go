package entity

import "encoding/json"

// 实时通讯数据块
type WsMessage struct {
	Event string 		`json:"event"`			// 事件类型
	Uuid string			`json:"uuid"`			// 聊天用户uuid
	SeatId int			`json:"seat_id"`		// 座席id
	Data WsMessageData	`json:"data"`
}

type WsMessageData struct {
	MessageId string	`json:"messageId"`		// 消息id
	Origin int8			`json:"origin"`			// 消息所属 1:客户 2:坐席 0:系统消息
	DataType string		`json:"type"`			// text：文本消息 image：图片消息 voice：语音消息 video：视频消息
	Contents string		`json:"content"`
}

func (e *WsMessage) String() string {
	data, err := json.Marshal(e)
	if err != nil {
		panic(err)
	}
	return string(data)
}

func (e *WsMessage) Error() string {
	return e.String()
}