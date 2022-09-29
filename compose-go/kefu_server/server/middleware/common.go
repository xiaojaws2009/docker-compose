package middleware

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func NextHandle(c *gin.Context)  {
	c.Writer.Header().Set("Access-Control-Allow-Origin", "*")
	c.Writer.Header().Set("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE")
	//c.Writer.Header().Set("Access-Control-Allow-Headers", "X-Requested-With")	// 仅限ajax调用
	c.Writer.Header().Set("Access-Control-Allow-Credentials", "true")
	c.Writer.Header().Set("Access-Control-Allow-Headers", "Content-Type,Access-Token,token")

	// 预发请求
	if c.Request.Method == "OPTIONS" {
		c.String(http.StatusOK, "")
		c.Abort()
		return
	}

	c.Next()
}