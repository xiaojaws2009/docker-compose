package model

func (KefuSeatStar) TableName() string {
	return "god_kefu_seat_star"
}

type KefuSeatStar struct {
	Id int				`json:"id" gorm:"primary_key"`
	UserId int			`json:"-"`
	SeatId int			`json:"seat_id"`
	Star1 int			`json:"star1"`
	Star2 int			`json:"star2"`
	Star3 int			`json:"star3"`
	Star4 int			`json:"star4"`
	Star5 int			`json:"star5"`
}