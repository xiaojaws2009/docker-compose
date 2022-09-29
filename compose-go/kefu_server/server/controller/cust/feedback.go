package cust

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/uitils"
	"strconv"
)

// 获取在线座席列表数
func GetFeedbackTypeList(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	feedbackTypeList := []model.KefuAnswerType{}
	db.DB.Where("user_id = ?", userId).Find(&feedbackTypeList)

	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]interface{}{"list":feedbackTypeList}

	c.JSON(200, msg)
}

func DoFeedbackContent(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	uuid := c.PostForm("uuid")
	typeId, _ := strconv.Atoi(c.PostForm("typeId"))
	content := c.PostForm("content")
	email := c.PostForm("email")
	phone := c.PostForm("phone")

	feedbackContent := model.KefuFeedbackContent{}
	feedbackContent.UserId = userId
	feedbackContent.Uuid = uuid
	feedbackContent.TypeId = typeId
	feedbackContent.Content = content
	feedbackContent.Email = email
	feedbackContent.Phone = phone
	db.DB.Create(&feedbackContent)

	if feedbackContent.Id > 0 {
		msg.Code = 1
		msg.Message = "success"
	}

	c.JSON(200, msg)
}