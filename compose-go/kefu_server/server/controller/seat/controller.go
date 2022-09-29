package seat

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
)

// 获取云帐号userId
func GetUserId(c *gin.Context) int {
	seatId := c.GetHeader("seatId")
	kefuSeat := model.KefuSeat{}
	db.DB.Where("id = ?", seatId).Select("user_id").First(&kefuSeat)
	return kefuSeat.UserId
}