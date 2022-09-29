package cust

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/server/service"
	"god/uitils"
	"net/http"
	"sort"
	"strconv"
)

// 获取访问token
func GetAccessToken(c *gin.Context) {
	appkey := c.Query("appkey")
	uuid := c.Query("uuid")

	// 校验appkey
	user := model.User{}
	db.DB.Where("appkey = ?", appkey).First(&user)
	if user.Id <= 0 {
		uitils.RespondWithMessage(c, 0, "appkey is error", nil)
		return
	}

	// 校验uuid
	if uuid != "" {
		custInfo := model.KefuCustInfo{}
		db.DB.Where("uuid = ? and user_id = ?", uuid, user.Id).First(&custInfo)
		if custInfo.Id <= 0 {
			uitils.RespondWithMessage(c, 0, "uuid is null", nil)
			return
		}
	}

	// 设置token
	token, _ := service.SetCustToken(uuid, appkey)
	uitils.RespondWithMessage(c, 1, "success", map[string]string{"token": token})
	return
}

// 获取基本信息
func GetChatInfo(c *gin.Context) {
	token := c.Query("token")
	uuid := c.Query("uuid")
	avatar := c.Query("avatar")
	nickname := c.Query("nickname")

	appkey := service.GetCustTempToken(token)
	if appkey == "" {
		uitils.RespondWithMessage(c, -100, "临时token失效", nil)
		return
	}

	// 校验appkey
	user := model.User{}
	db.DB.Where("appkey = ?", appkey).First(&user)
	if user.Id <= 0 {
		uitils.RespondWithMessage(c, 0, "appkey is error", nil)
		return
	}

	if uuid == "" {
		uuid = uitils.GetUuid(user.Id) // 聊天用户唯一标识
	}
	if nickname == "" {
		nickname = fmt.Sprintf("客户%v", uuid[0:7]) // 默认呢称
	}
	if avatar == "" {
		avatar = "http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132" // 默认图片
	}

	// 更新相关数据
	custInfo := model.KefuCustInfo{}
	db.DB.Where("uuid = ? and user_id = ?", uuid, user.Id).First(&custInfo)
	if custInfo.Id == 0 {
		custInfo.Uuid = uuid
		custInfo.UserId = user.Id
		custInfo.Nickname = nickname
		custInfo.Avatar = avatar
		db.DB.Create(&custInfo)
	} else {
		custInfo.Nickname = nickname
		custInfo.Avatar = avatar
		db.DB.Save(&custInfo)
	}

	data := map[string]interface{}{
		//"seatList": kefuSeatMapList,
		"custInfo": map[string]string{
			"uuid":     uuid,
			"nickname": nickname,
			"avatar":   avatar,
		},
	}

	uitils.RespondWithMessage(c, 0, "success", data)
}

// 客户聊天连接详情
func GetCustClient(c *gin.Context) {
	msg := entity.Message{Code: 0, Message: "error"}
	uuid := c.Query("uuid")

	cust := &model.KefuCust{}
	db.DB.Where("uuid = ?", uuid).First(cust)

	if cust.Id > 0 {
		msg = entity.Message{Code: 1, Message: "success", Data: cust}
	}

	c.JSON(http.StatusOK, msg)
}

// 获取客户消息列表接口
func GetCustMessageList(c *gin.Context) {
	msg := entity.Message{Code: 0, Message: "error"}

	seatId := c.Query("seatId")
	uuid2 := c.Query("uuid")

	if seatId == "" || uuid2 == "" {
		uitils.RespondWithMessage(c, 0, "参数不能为空", nil)
		return
	}

	page, _ := strconv.Atoi(c.DefaultQuery("page", "1"))

	pagesize := 10
	start := (page - 1) * pagesize
	if start <= 0 {
		start = 0
	}

	// 获取消息列表
	messageList := []model.KefuMessage{}
	db.DB.Where("uuid = ? and seat_id = ?", uuid2, seatId).Offset(start).Limit(pagesize).Order("id desc").Find(&messageList)

	// 更新为已读消息
	for _, message := range messageList {
		if message.Origin == 2 {
			db.DB.Model(&model.KefuMessage{}).Where("id = ?", message.Id).Update("is_read", 1)
		}
	}

	sort.Sort(model.MessageList(messageList))

	msg.Data = map[string]interface{}{"list": messageList, "pageInfo": map[string]int{"page": page, "pagesize": pagesize}}
	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}

// 提交对坐席的评论
func DoComment(c *gin.Context) {
	msg := entity.Message{Code: 0, Message: "error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c, 0, "参数不能为空", nil)
		return
	}

	seatId, _ := strconv.Atoi(c.PostForm("seatId"))
	uuid2 := c.Query("uuid")
	star, _ := strconv.Atoi(c.DefaultPostForm("star", "0"))
	content := c.PostForm("content")

	kefuSeatComment := model.KefuSeatComment{}
	kefuSeatComment.UserId = userId
	kefuSeatComment.SeatId = seatId
	kefuSeatComment.Uuid = uuid2
	kefuSeatComment.Star = star
	kefuSeatComment.Content = content
	db.DB.Create(&kefuSeatComment)

	if kefuSeatComment.Id > 0 {
		// 相应的星级增加
		if kefuSeatComment.Star >= 1 && kefuSeatComment.Star <= 5 {
			kefuSeatStar := model.KefuSeatStar{}
			kefuSeatStar.UserId = userId
			kefuSeatStar.SeatId = seatId
			switch kefuSeatComment.Star {
			case 1:
				kefuSeatStar.Star1 = 1
			case 2:
				kefuSeatStar.Star2 = 1
			case 3:
				kefuSeatStar.Star3 = 1
			case 4:
				kefuSeatStar.Star4 = 1
			case 5:
				kefuSeatStar.Star5 = 1
			}
			starColumn := fmt.Sprintf("%v%v", "star", kefuSeatComment.Star)
			db.DB.Where("seat_id = ?", seatId).Attrs(starColumn, gorm.Expr(fmt.Sprintf("%v + 1", starColumn))).FirstOrCreate(&kefuSeatStar)
		}

		msg.Code = 1
		msg.Message = "success"
		c.JSON(http.StatusOK, msg)
		return
	}

	c.JSON(http.StatusOK, msg)
}

// 获取在线座席列表数
func GetSeatList(c *gin.Context) {
	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c, 0, "参数不能为空", nil)
		return
	}

	kefuSeatList := []model.KefuSeat{}
	db.DB.Where("user_id = ? and online = ?", userId, 1).Find(&kefuSeatList)

	msg := entity.Message{Code: 1, Message: "success", Data: map[string]interface{}{"list": kefuSeatList}}
	c.JSON(http.StatusOK, msg)
	return
}
