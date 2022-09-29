package model

func (User) TableName() string {
	return "god_user"
}

type User struct {
	Id int				`json:"id" gorm:"primary_key"`
	Nickname string		`json:"nickname"`
	Avatar string		`json:"avatar"`
	Username string		`json:"username"`
	Appkey string		`json:"appkey"`
	Status int			`json:"status"`
}