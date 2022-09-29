package model

func (KefuCustInfo) TableName() string {
	return "god_kefu_cust_info"
}

type KefuCustInfo struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"user_id"`
	Uuid string			`json:"uuid"`
	Nickname string		`json:"nickname"`
	Avatar string		`json:"avatar"`
	ChatTime int64		`json:"chat_time"`
}