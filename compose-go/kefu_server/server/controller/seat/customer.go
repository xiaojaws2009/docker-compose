package seat

import (
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/model"
	"god/server/entity"
	"god/uitils"
	"net/http"
	"strconv"
)

// 客户咨料相关的

func DoSaveCustomer(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	userId := GetUserId(c)
	if userId == 0 {
		uitils.RespondWithMessage(c,0, "参数不能为空", nil)
		return
	}

	uuid := c.PostForm("uuid")
	if uuid == "" {
		uitils.RespondWithMessage(c,0, "uuid必填参数", nil)
		return
	}

	birthday, _ := strconv.Atoi(c.PostForm("birthday"))
	gender, _ := strconv.Atoi(c.PostForm("gender"))
	city := c.PostForm("city")
	company := c.PostForm("company")
	address := c.PostForm("address")
	contact := c.PostForm("contact")
	phone := c.PostForm("phone")
	email := c.PostForm("email")
	qq := c.PostForm("qq")
	remark := c.PostForm("remark")

	customer := model.Customer{}
	customer.UserId = userId
	customer.Uuid = uuid
	customer.Gender = gender
	if birthday != 0{
		customer.Birthday = birthday
	}
	if city != ""{
		customer.City = city
	}
	if company != "" {
		customer.Company = company
	}
	if address != "" {
		customer.Address = address
	}
	if contact != "" {
		customer.Contact = contact
	}
	if phone != "" {
		customer.Phone = phone
	}
	if email != "" {
		customer.Email = email
	}
	if qq != "" {
		customer.Qq = qq
	}
	if remark != "" {
		customer.Remark = remark
	}

	db.DB.Where("uuid = ? and user_id = ?", uuid, userId).Assign(customer).FirstOrCreate(&customer)

	msg.Code = 1
	msg.Message = "success"
	c.JSON(http.StatusOK, msg)
}


func GetCustomerDetail(c *gin.Context)  {
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
	customer := model.Customer{}
	db.DB.Where("uuid = ?", uuid).First(&customer)
	if customer.Id == 0 {
		uitils.RespondWithMessage(c,0, "找不到客户资料信息", nil)
		return
	}

	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]interface{}{"info":customer}

	c.JSON(http.StatusOK, msg)
}