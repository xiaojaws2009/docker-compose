package seat

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/uitils"
	"net/http"
	"strconv"
)

func GetAnswerContentList(c *gin.Context)  {

	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	page, _ := strconv.Atoi(c.DefaultPostForm("page", "1"))
	pagesize := 10
	start := (page - 1) * pagesize

	seatId, _ := strconv.Atoi(c.DefaultQuery("seatId", "0"))
	keyword := c.PostForm("keyword")

	// 是否全局
	isCommon, _ := strconv.Atoi(c.DefaultQuery("isCommon", "0"))
	if isCommon == 1 {
		seatId = 0
	}

	sqlWhere := ""
	typeId,_ := strconv.Atoi(c.DefaultQuery("typeId", "0"))
	if typeId > 0 {
		sqlWhere = fmt.Sprintf(" AND  type_id = %d", typeId)
	}

	answerContentList := []model.KefuAnswerContent{}
	if keyword != "" {
		db.DB.Where(fmt.Sprintf("user_id=? AND seat_id=? AND content LIKE ? %s", sqlWhere), userId, seatId, "%" + keyword + "%").Offset(start).Limit(pagesize).Find(&answerContentList)
	} else {
		db.DB.Where(fmt.Sprintf("user_id=? AND seat_id=? %s", sqlWhere), userId, seatId).Offset(start).Limit(pagesize).Find(&answerContentList)
	}

	msg.Data = map[string]interface{}{"list":answerContentList}
	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}

func GetAnswerTypeList(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	seatId, _ := strconv.Atoi(c.DefaultQuery("seatId", "0"))

	// 是否全局
	isCommon, _ := strconv.Atoi(c.DefaultQuery("isCommon", "0"))
	if isCommon == 1 {
		seatId = 0
	}

	answerTypeList := []model.KefuAnswerType{}
	db.DB.Where("user_id=? and seat_id=?", userId, seatId).Find(&answerTypeList)
	msg.Data = map[string]interface{}{"list":answerTypeList}
	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}

func DoAnswerType(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	id, _ := strconv.Atoi(c.DefaultPostForm("id", "0"))

	seatId, _ := strconv.Atoi(c.DefaultPostForm("seatId", "0"))

	// 是否全局
	isCommon, _ := strconv.Atoi(c.DefaultPostForm("isCommon", "0"))
	if isCommon == 1 {
		seatId = 0
	}

	name := c.PostForm("name")
	if name == "" {
		uitils.RespondWithMessage(c,0, "名称不能为空", nil)
		return
	}

	answerType := model.KefuAnswerType{}
	answerType.UserId = userId
	answerType.SeatId = seatId
	answerType.Name = name
	db.DB.Where("id = ?", id).Assign(answerType).FirstOrCreate(&answerType)

	if answerType.Id == 0 {
		uitils.RespondWithMessage(c,0, "保存失败", nil)
		return
	}

	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]int{"id":answerType.Id}

	c.JSON(http.StatusOK, msg)
}

func DoAnswerContent(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	id, _ := strconv.Atoi(c.DefaultPostForm("id", "0"))

	seatId, _ := strconv.Atoi(c.DefaultPostForm("seatId", "0"))

	// 是否全局
	isCommon, _ := strconv.Atoi(c.DefaultPostForm("isCommon", "0"))
	if isCommon == 1 {
		seatId = 0
	}

	typeId, _ := strconv.Atoi(c.DefaultPostForm("typeId", "0"))
	title := c.DefaultPostForm("title", "")
	content := c.PostForm("content")
	if typeId == 0 || content == "" {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	answerContent := model.KefuAnswerContent{}
	answerContent.UserId = userId
	answerContent.SeatId = seatId
	answerContent.Title = title
	answerContent.Content = content
	answerContent.TypeId = typeId
	db.DB.Where("id = ?", id).Assign(answerContent).FirstOrCreate(&answerContent)

	if answerContent.Id == 0 {
		uitils.RespondWithMessage(c,0, "保存失败", nil)
		return
	}

	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]int{"id":answerContent.Id}

	c.JSON(http.StatusOK, msg)
}

func DelAnswerType(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	id, _ := strconv.Atoi(c.DefaultQuery("id", "0"))
	if id == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	db.DB.Where("id = ?", id).Delete(&model.KefuAnswerType{})
	db.DB.Where("type_id = ?", id).Delete(&model.KefuAnswerContent{})

	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}

func DelAnswerContent(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	id, _ := strconv.Atoi(c.DefaultQuery("id", "0"))
	if id == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	db.DB.Where("id = ?", id).Delete(&model.KefuAnswerContent{})

	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}