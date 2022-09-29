package service

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/core/cache"
	"god/uitils"
)

// token校验
func SeatAuthRequired(c *gin.Context)  {
	token := c.GetHeader("token")
	seatId := c.GetHeader("seatId")

	if token == "" || seatId == "" {
		uitils.RespondWithMessage(c, -101, "认证失败", nil)
		return
	} else {
		token := c.GetHeader("token")
		r := SeatAuthToken(seatId, token)
		if r == false {
			uitils.RespondWithMessage(c, -100, "认证失败", nil)
			return
		}
	}
	c.Next()
}

// 检查token
func SeatAuthToken(seatId string, token string) bool {
	if token == "" || seatId == "" {
		return false
	}

	key := fmt.Sprintf(cache.SEAT_TOKEN, seatId)
	contents := cache.Cache.Get(key)
	data := string(contents)
	if data == "" || data != token {
		return false
	}
	return true
}