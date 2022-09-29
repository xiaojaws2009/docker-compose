package model

func (KefuAnswerContent) TableName() string {
	return "god_kefu_answer_content"
}

type KefuAnswerContent struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	SeatId int			`json:"seat_id"`
	TypeId int			`json:"type_id"`
	Title string		`json:"title"`
	Content string		`json:"content"`

}