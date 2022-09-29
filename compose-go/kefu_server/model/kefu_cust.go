package model

func (KefuCust) TableName() string {
	return "god_kefu_cust"
}

type KefuCust struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	SeatId int			`json:"seat_id"`
	Uuid string			`json:"uuid"`
	Nickname string		`json:"nickname"`
	Avatar string		`json:"avatar"`
	Online int8			`json:"online"`
	ChatTime int64		`json:"chat_time"`
	Mark int8			`json:"mark"`
	Status int8			`json:"status"`
}