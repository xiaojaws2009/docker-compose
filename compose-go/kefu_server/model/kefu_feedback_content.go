package model

func (KefuFeedbackContent) TableName() string {
	return "god_feedback_content"
}

type KefuFeedbackContent struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	Uuid string			`json:"uuid"`
	TypeId int			`json:"type_id"`
	Content string		`json:"content"`
	Email string		`json:"email"`
	Phone string		`json:"phone"`
}