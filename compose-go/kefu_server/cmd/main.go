package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/chat"
	"god/conf"
	"god/core/hub"
	"god/server"
	_ "god/task"
	"log"
	"runtime"
)


func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())	// 设置线程数量

	log.Println("start kefu server")

	hub := hub.Hub
	go hub.Run()

	r := gin.Default()

	// 客服消息处理
	r.GET("/cust", func(c *gin.Context) {
		chat.ServeCust(hub, c)
	})

	// 座席消息处理
	r.GET("/seat", func(c *gin.Context) {
		chat.ServeSeat(hub, c)
	})

	// 路由注册
	server.RegisterHandler(r)

	err := r.Run(fmt.Sprintf("%v:%v", conf.Env.GetValue("system", "http_host"), conf.Env.GetValue("system","http_port")))
	if err != nil {
		log.Fatal("gin: ", err)
	}
}