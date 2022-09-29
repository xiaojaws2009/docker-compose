package controller

import (
	"bytes"
	"fmt"
	"github.com/gin-gonic/gin"
	"god/conf"
	"god/server/entity"
	"god/uitils"
	"io"
	"io/ioutil"
	"math/rand"
	"net/http"
	"os"
	"time"
)

/**
Content-Type:binary/octet-stream
 */
func UploadFile(c *gin.Context)  {
	msg := entity.Message{Code:0, Message:"error"}

	/*
	file, _ := c.FormFile("file")
	log.Info.Println(file.Filename)

	// Upload the file to specific dst.
	dir := uitils.GetCurrentDirectory()
	dir = fmt.Sprintf("%v/%v", dir, "uploads/")
	log.Info.Println(dir)

	//c.SaveUploadedFile(file, dir)
	*/

	runDir := uitils.GetCurrentDirectory()
	dir := fmt.Sprintf("%v/%v/%v", runDir, "uploads", time.Now().Format("2006/01/02"))
	err := uitils.CreateDir(dir)
	if err != nil {
		msg.Message = "创建目录失败。"
		c.JSON(http.StatusOK, msg)
		return
	}

	// 复制body数据流
	defer c.Request.Body.Close()
	contents, err := ioutil.ReadAll(c.Request.Body)

	fileExt := uitils.GetFileType(contents[0:20])
	if fileExt == "" {
		msg.Message = "上传的文件异常。"
		c.JSON(http.StatusOK, msg)
		return
	}

	if err != nil {
		msg.Message = "获取上传文件异常。"
		c.JSON(http.StatusOK, msg)
		return
	}

	file := fmt.Sprintf("%v/%v.%v", dir, fmt.Sprintf("%v%v", time.Now().Unix(), rand.Intn(1000)), fileExt)
	fs, err := os.Create(file)
	if err != nil {
		msg.Message = "写入文件异常。"
		c.JSON(http.StatusOK, msg)
		return
	}

	body := ioutil.NopCloser(bytes.NewReader(contents))
	io.Copy(fs, body)
	defer func() {
		fs.Close()
		body.Close()
	}()

	url := fmt.Sprintf("%v%v", conf.Env.GetValue("system", "static_url"), file[len(runDir):])
	msg.Code = 1
	msg.Message = "success"
	msg.Data = map[string]interface{}{"fileUrl":url}

	c.JSON(http.StatusOK, msg)
}