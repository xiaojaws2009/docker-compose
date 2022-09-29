package model

import "time"

func (KefuCustVisit) TableName() string {
	return "god_kefu_cust_visit"
}

type KefuCustVisit struct {
	Id int							`json:"id" gorm:"primary_key"`
	UserId int						`json:"-"`
	Uuid string						`json:"uuid"`
	Source string					`json:"source"`
	Channel string					`json:"channel"`
	Ip string						`json:"ip"`
	Device string					`json:"device"`
	CreateTime *time.Time			`json:"create_time"`
}