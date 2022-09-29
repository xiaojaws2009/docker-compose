package controller

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"net/http"
	"strings"
)

// 更新消息为读取状态
func DoMessageReadStatus(c *gin.Context)  {
	messageIds := c.DefaultPostForm("messageIds", "")
	if messageIds != "" {
		messageIdArr := strings.Split(messageIds, ",")
		db.DB.Model(&model.KefuMessage{}).Update("message_id IN (?)", messageIdArr).Update("is_read", 1)
	}

	msg := entity.Message{}
	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}
