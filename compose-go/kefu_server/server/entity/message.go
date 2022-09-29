package entity

import "encoding/json"

type Message struct {
	Code int 			`json:"code"`
	Message string		`json:"message"`
	Data interface{}	`json:"data"`
}

func (e *Message) String() string {
	data, err := json.Marshal(e)
	if err != nil {
		panic(err)
	}
	return string(data)
}

func (e *Message) Error() string {
	return e.String()
}

// 左侧用户列表
type SessionCust struct {
	Uuid string 			`json:"uuid"`
	Nickname string			`json:"nickname"`
	Avatar string			`json:"avatar"`
	ChatTime int64			`json:"chat_time"`
	Unread int				`json:"unread"`
	Mark int8				`json:"mark"`
	Online int8				`json:"online"`
	Status int8				`json:"status"`
}