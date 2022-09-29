package model

import "time"

func (KefuMessage) TableName() string {
	return "god_kefu_message"
}

type KefuMessage struct {
	Id int					`json:"id" gorm:"primary_key"`
	MessageId string		`json:"message_id"`
	UserId int				`json:"-"`
	SeatId int				`json:"seat_id"`
	Uuid string				`json:"uuid"`
	Origin int8				`json:"origin"`		//发送者，1:客户 2:坐席
	Type int8 				`json:"type"`
	Content string			`json:"content"`
	IsRead int8				`json:"is_read"`
	CreateTime string		`json:"create_time" gorm:"-"`
	CreateTimeAt time.Time 	`json:"-" gorm:"column:create_time"`
}

func (s *KefuMessage) AfterFind() (err error) {
	if s.CreateTime == "" {
		s.CreateTime = s.CreateTimeAt.Format("2006-01-02 15:04:05")
	}
	return
}


// 按照 Person.Age 从大到小排序
type MessageList []KefuMessage

func (m MessageList) Len() int {    // 重写 Len() 方法
	return len(m)
}

func (m MessageList) Swap(i, j int){     // 重写 Swap() 方法
	m[i], m[j] = m[j], m[i]
}

func (m MessageList) Less(i, j int) bool {    // 重写Less()方法， 从大到小排序
	return m[i].Id < m[j].Id
}