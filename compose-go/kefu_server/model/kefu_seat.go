package model

func (KefuSeat) TableName() string {
	return "god_kefu_seat"
}

type KefuSeat struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	Nickname string		`json:"nickname"`
	Avatar string		`json:"avatar"`
	Phone string		`json:"phone"`
	Qq string			`json:"qq"`
	Email string		`json:"email"`
	Introduce string	`json:"introduce"`
	Signature string	`json:"signature"`
	Online int			`json:"online"`
	Status int			`json:"status"`
	MaxAccept int		`json:"max_accept"`
	PhraseStart string	`json:"phrase_start"`
	PhraseEnd string	`json:"phrase_end"`
}