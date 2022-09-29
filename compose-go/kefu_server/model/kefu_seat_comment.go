package model

func (KefuSeatComment) TableName() string {
	return "god_kefu_seat_comment"
}

type KefuSeatComment struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	SeatId int			`json:"seat_id"`
	Uuid string			`json:"uuid"`
	Star int			`json:"star"`
	Content string		`json:"content"`
}