package controller

import (
	"god/core/db"
	"god/core/hub"
	"god/model"
)

// 检查启动时是否坐席在线
func CheckStartSeatOnline()  {
	// 查询数据库
	kefuSeatList := []model.KefuSeat{}
	db.DB.Where("online = ?", 1).Find(&kefuSeatList)
	if len(kefuSeatList) > 0 {
		for _, seat := range kefuSeatList {
			if _, ok := hub.Hub.Seats[seat.Id] ; ok == false {
				seat.Online = 0	// 离线
				db.DB.Save(seat)
			}
		}
	}
}

// 检查启动时是否用户在线
func CheckStartCustOnline()  {
	// 查询数据库
	kefuCustList := []model.KefuCust{}
	db.DB.Where("online = ?", 1).Find(&kefuCustList)
	if len(kefuCustList) > 0 {
		for _, seat := range kefuCustList {
			if _, ok := hub.Hub.Seats[seat.Id] ; ok == false {
				seat.Online = 0	// 离线
				db.DB.Save(seat)
			}
		}
	}
}