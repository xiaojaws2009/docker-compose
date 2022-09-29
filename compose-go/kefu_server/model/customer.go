package model

func (Customer) TableName() string {
	return "god_customer"
}

type Customer struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	Uuid string			`json:"uuid"`
	Nickname string		`json:"nickname"`
	Avatar string		`json:"avatar"`
	Birthday int		`json:"birthday"`
	Gender int			`json:"gender"`
	City string			`json:"city"`
	Company string		`json:"company"`
	Address string		`json:"address"`
	Contact string		`json:"contact"`
	Phone string		`json:"phone"`
	Email string		`json:"email"`
	Qq string			`json:"qq"`
	Remark string		`json:"remark"`
}