package seat

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/uitils"
	"net/http"
)

// 获取客户访问信息
func GetCustVisit(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	uuid := c.Query("uuid")
	if uuid == "" {
		uitils.RespondWithMessage(c,0, "uuid必填参数", nil)
		return
	}

	custVisit := model.KefuCustVisit{}
	db.DB.Where("uuid = ?", uuid).First(&custVisit)
	if custVisit.Id == 0 {
		uitils.RespondWithMessage(c,0, "找不到访客信息", nil)
		return
	}

	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]interface{}{"info":custVisit}

	c.JSON(http.StatusOK, msg)
}

func DoCustVisit(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	uuid := c.Query("uuid")
	if uuid == "" {
		uitils.RespondWithMessage(c,0, "uuid必填参数", nil)
		return
	}

	source := c.PostForm("source")
	channel := c.PostForm("channel")
	ip := c.PostForm("ip")
	device := c.PostForm("device")

	custVisit := model.KefuCustVisit{}
	db.DB.Where("uuid = ? and user_id = ?", uuid, userId).First(&custVisit)

	custVisit.UserId = userId
	custVisit.Uuid = uuid
	if source != "" {
		custVisit.Source = source
	}
	if channel != "" {
		custVisit.Channel = channel
	}
	if ip != "" {
		custVisit.Ip = ip
	}
	if device != "" {
		custVisit.Device = device
	}

	db.DB.Where("uuid = ? and user_id = ?", uuid, userId).Assign(custVisit).FirstOrCreate(&custVisit)

	msg.Code = 1
	msg.Message = "success"
	c.JSON(http.StatusOK, msg)
}