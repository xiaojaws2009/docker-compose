package cust

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
)

func GetUserId(c *gin.Context) int {
	uuid := c.GetHeader("uuid")
	kefuCust := model.KefuCust{}
	db.DB.Where("uuid = ?", uuid).Select("user_id").First(&kefuCust)
	return kefuCust.UserId
}