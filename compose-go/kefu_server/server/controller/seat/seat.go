package seat

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/uitils"
	"net/http"
	"sort"
	"strconv"
)

// 获取在线座席列表数
func GetSeatList(c *gin.Context)  {
	userId := c.Query("userId")
	online := c.DefaultQuery("online", "1")		// 默认在线

	kefuSeatList := []model.KefuSeat{}
	db.DB.Where("user_id = ? and online = ?", userId, online).Find(&kefuSeatList)

	msg := entity.Message{Code:1, Message:"success", Data:map[string]interface{}{"list":kefuSeatList}}
	c.JSON(http.StatusOK, msg)
}

func GetSessionCustList(c *gin.Context)  {
	seatId := c.Query("seatId")
	//online := c.DefaultQuery("online", "1")		// 默认在线
	keyword := c.Query("keyword")

	custList := []model.KefuCust{}
	if keyword != "" {
		db.DB.Where("seat_id = ? AND nickname LIKE ?", seatId, keyword).Order("chat_time DESC").Find(&custList)
	} else {
		db.DB.Where("seat_id = ?", seatId).Order("chat_time DESC").Find(&custList)
	}

	onList := []entity.SessionCust{}
	offList := []entity.SessionCust{}

	for _, cust := range custList {

		sc := entity.SessionCust{}
		sc.Uuid = cust.Uuid
		sc.Avatar = cust.Avatar
		sc.Nickname = cust.Nickname
		sc.Status = cust.Status
		sc.Online = cust.Online
		sc.ChatTime = cust.ChatTime
		sc.Mark = cust.Mark

		// 获取未读消息总数
		unread := 0
		db.DB.Model(&model.KefuMessage{}).Where("uuid = ? and origin = ? and is_read = ?", cust.Uuid, 1, 0).Count(&unread)
		sc.Unread = unread

		if cust.Online == 1 {
			onList = append(onList, sc)
		} else {
			offList = append(offList, sc)
		}
	}

	msg := entity.Message{Code:1, Message:"success", Data:map[string]interface{}{"online":onList, "offline":offList}}
	c.JSON(http.StatusOK, msg)
}

func GetCustList(c *gin.Context)  {
	seatId := c.Query("seatId")
	keyword := c.Query("keyword")
	mark := c.Query("mark")

	page, _ := strconv.Atoi(c.Query("page"))
	pagesize := 10
	start := (page - 1) * pagesize

	custList := []model.KefuCust{}
	if mark == "1" {
		db.DB.Where("seat_id = ? AND mark = ?", seatId, mark).Offset(start).Limit(pagesize).Order("id DESC").Find(&custList)
	} else {
		if keyword != "" {
			db.DB.Where("seat_id = ? AND nickname LIKE ?", seatId, keyword).Offset(start).Limit(pagesize).Order("id DESC").Find(&custList)
		} else {
			db.DB.Where("seat_id = ?", seatId).Offset(start).Limit(pagesize).Order("id DESC").Find(&custList)
		}
	}

	// 会话用户列表
	sessionCustList := []entity.SessionCust{}
	for _, cust := range custList {
		sc := entity.SessionCust{}
		sc.Uuid = cust.Uuid
		sc.Avatar = cust.Avatar
		sc.Nickname = cust.Nickname
		sc.Status = cust.Status
		sc.Online = cust.Online
		sc.ChatTime = cust.ChatTime
		sc.Mark = cust.Mark

		unread := 0
		db.DB.Model(&model.KefuMessage{}).Where("uuid = ? and origin = ? and is_read = ?", cust.Uuid, 1, 0).Count(&unread)
		sc.Unread = unread

		sessionCustList = append(sessionCustList, sc)
	}

	msg := entity.Message{Code:1, Message:"success", Data:map[string]interface{}{"list":sessionCustList}}
	c.JSON(http.StatusOK, msg)
}

func GetSeatDetail(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}
	seatId := c.Query("seatId")

	seat := &model.KefuSeat{}
	db.DB.First(seat, seatId)

	if seat.Id > 0 {
		msg = entity.Message{Code:1, Message:"success", Data:seat}
	}

	c.JSON(http.StatusOK, msg)
}

// 保存坐席信息
func DoSeatDetail(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "token鉴权失败", nil)
		return
	}

	nickname := c.PostForm("nickname")
	avatar := c.PostForm("avatar")
	maxAccept := c.PostForm("maxAccept")
	phraseStart := c.PostForm("phraseStart")
	phraseEnd := c.PostForm("phraseEnd")
	seatId := c.PostForm("seatId")

	seat := model.KefuSeat{}
	db.DB.Where("id = ? and user_id = ?", seatId, userId).First(&seat)
	if seat.Id == 0 {
		uitils.RespondWithMessage(c,0, "坐席不存在", nil)
		return
	}

	if nickname != "" {
		seat.Nickname = nickname
	}

	if avatar != "" {
		seat.Avatar = avatar
	}

	if maxAccept != "0" && maxAccept != "" {
		seat.MaxAccept, _ = strconv.Atoi(maxAccept)
	}

	if phraseStart != "" {
		seat.PhraseStart = phraseStart
	}

	if phraseEnd != "" {
		seat.PhraseEnd = phraseEnd
	}
	db.DB.Save(&seat)

	msg.Code = 1
	msg.Message = "success"
	c.JSON(http.StatusOK, msg)
}

// 获取客户消息列表接口
func GetSeatMessageList(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "token鉴权失败", nil)
		return
	}

	seatId := c.Query("seatId")
	uuid2 := c.Query("uuid")
	if seatId == "" || uuid2 == "" {
		msg.Message = "seatId or uuid is null"
		c.JSON(http.StatusOK, msg)
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
		if message.Origin == 1 {
			db.DB.Model(&model.KefuMessage{}).Where("id = ?", message.Id).Update("is_read", 1)
		}
	}

	sort.Sort(model.MessageList(messageList))

	// 输出
	msg.Data = map[string]interface{}{"list":messageList, "pageInfo":map[string]int{"page":page, "pagesize":pagesize}}
	msg.Code = 1
	msg.Message = "success"

	c.JSON(http.StatusOK, msg)
}

// 星标用户
func DoCustMark(c *gin.Context)  {

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "token鉴权失败", nil)
		return
	}

	seatId, _ := strconv.Atoi(c.Query("seatId"))
	if seatId == 0 {
		uitils.RespondWithMessage(c,0, "seatId参数错误", nil)
		return
	}

	uuid := c.Query("uuid")
	if uuid == "" {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	mark := c.Query("mark")
	if mark != "1" && mark != "0" {
		uitils.RespondWithMessage(c,0, "mark参数错误", nil)
		return
	}

	kefuCust := model.KefuCust{}
	db.DB.Model(&kefuCust).Where("user_id = ? and seat_id = ? and uuid = ?", userId, seatId, uuid).Update("mark", mark)

	msg := entity.Message{Code:1, Message:"success"}
	c.JSON(http.StatusOK, msg)
}