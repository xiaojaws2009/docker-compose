package model

func (KefuAnswerType) TableName() string {
	return "god_kefu_answer_type"
}

type KefuAnswerType struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	SeatId int			`json:"seat_id"`
	Name string			`json:"name"`
}