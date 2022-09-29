package service

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/conf"
	"god/core/cache"
	"god/core/log"
	"god/uitils"
	"time"
)

// 客户端token校验
func CustAuthRequired(c *gin.Context)  {
	token := c.GetHeader("token")
	uuid := c.GetHeader("uuid")

	if token == "" || uuid == "" {
		uitils.RespondWithMessage(c, -101, "认证失败", nil)
		return
	} else {
		r := CustAuthToken(uuid, token)
		if r == false {
			uitils.RespondWithMessage(c, -100, "认证失败", nil)
			return
		}
	}
	c.Next()
}

// 检查token
func CustAuthToken(uuid string, token string) bool {
	key := fmt.Sprintf(cache.CUST_TOKEN, uitils.Sha1(uuid))
	contents := cache.Cache.Get(key)
	data := string(contents)
	if data == "" || data != token {
		return false
	}
	return true
}

// 临时token检查
func GetCustTempToken(token string) string {
	key := fmt.Sprintf(cache.CUST_TOKEN, token)
	contents := cache.Cache.Get(key)
	data := string(contents)
	return data
}

// set token
func SetCustToken(uuid string, appkey string) (string, int64) {

	var uuidTemp string
	if uuid == "" {
		uuidTemp = uitils.GetUuid(0)
	} else {
		uuidTemp = uuid
	}

	token := uitils.Sha1(fmt.Sprintf("%v%v%v", uuidTemp, time.Now().Unix(), conf.Env.GetValue("system", "app_key")))

	t := 86400 * 1
	var key string
	if uuid == "" {
		key = fmt.Sprintf(cache.CUST_TOKEN, token)				// 临时token
		t = 60 * 5												// 临时token有效时间
	} else {
		key = fmt.Sprintf(cache.CUST_TOKEN, uitils.Sha1(uuid))	// 用户token
	}

	// 更新token
	{
		val := token
		if uuid == "" {
			val = appkey
		}
		err := cache.Cache.Set(key, []byte(val),  time.Duration(t) * time.Second)
		if err != nil {
			log.Error.Println("cache set:", err)
		}
	}

	return token, int64(t) + time.Now().Unix()
}