package model

func (KefuFeedbackType) TableName() string {
	return "god_feedback_type"
}

type KefuFeedbackType struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	Name string			`json:"name"`
}