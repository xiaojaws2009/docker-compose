package controller

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/conf"
	"god/server/entity"
	"net/http"
)

/**
Content-Type:binary/octet-stream
 */
func GetFaceList(c *gin.Context)  {
	msg := entity.Message{Code:1, Message:"success"}

	faceList := []string{}
	var i int
	for i = 1; i <= 132; i++ {
		faceUrl := fmt.Sprintf("%v/static/images/face/%v.gif", conf.Env.GetValue("system", "static_url"), i)
		faceList = append(faceList, faceUrl)
	}

	msg.Data = map[string]interface{}{"list":faceList}

	c.JSON(http.StatusOK, msg)
}