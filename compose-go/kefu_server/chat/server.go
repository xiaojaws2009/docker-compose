package chat

// websocket请求入口

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/core/db"
	"god/core/log"
	"god/model"
	"god/server/service"
	"strconv"
	"time"
)

// 定义客户请求处理方法
func ServeCust(hub *Hub, c *gin.Context) {
	uuid := c.Query("uuid")
	token := c.GetHeader("Sec-WebSocket-Protocol")
	userId := service.CustAuthToken(uuid, token)
	if userId == false {
		log.Error.Println("cust token error")
	}

	responseHeader := map[string][]string{
		"Sec-WebSocket-Protocol": []string{token},
	}

	nickname := c.DefaultQuery("nickname", fmt.Sprintf("客户%v", uuid[0:7]))
	avatar := c.DefaultQuery("avatar", "http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZJTLdAyNxfKib4HUHce99yDNEUoKnfs1dufgcpoH7sLvRDcKQjZ8Y8k6TXFbm8iay61w3icsMDbg6SNQ/132")

	if uuid == "" {
		log.Error.Printf("ServeCust error: %v", "uuid is error")
		return
	}

	seatId := c.Query("seatId")
	seat := &model.KefuSeat{}
	db.DB.Find(seat, seatId)
	if seat.Id == 0 || seat.Status != 1 {
		log.Error.Printf("ServeCust error: %v", "坐席异常")
		return
	}

	conn, err := Upgrader.Upgrade(c.Writer, c.Request, responseHeader)
	if err != nil {
		log.Error.Printf("ServeCust error: %v", err)
		return
	}

	client := &CustClient{Hub: hub, Conn: conn, Send: make(chan []byte, 256)}
	client.Uuid = uuid
	client.SeatId, _ = strconv.Atoi(seatId)
	client.UserId = seat.UserId
	client.Nickname = nickname
	client.Avatar = avatar
	client.ChatTime = time.Now().Unix()

	client.Hub.CustRegister <- client // 注册连接

	go client.WritePump()
	go client.ReadPump()
}

// 定义坐席请求处理方法
func ServeSeat(hub *Hub, c *gin.Context) {
	token := c.GetHeader("Sec-WebSocket-Protocol")
	responseHeader := map[string][]string{
		"Sec-WebSocket-Protocol": []string{token},
	}

	seatId := c.Query("seatId")
	check := service.SeatAuthToken(seatId, token)
	if check == false {
		log.Error.Println("seat token error")
	}

	kefuSeat := &model.KefuSeat{}
	db.DB.Find(kefuSeat, seatId)
	if kefuSeat.Id == 0 || kefuSeat.Status != 1 {
		log.Error.Printf("ServeSeat error: %v", "坐席异常")
		return
	}

	conn, err := Upgrader.Upgrade(c.Writer, c.Request, responseHeader)
	if err != nil {
		log.Error.Printf("ServeSeat error: %v", err)
		return
	}

	client := &SeatClient{Hub: hub, Conn: conn, Send: make(chan []byte, 256)}
	client.SeatId, _ = strconv.Atoi(seatId)
	client.UserId = kefuSeat.UserId
	client.Nickname = kefuSeat.Nickname
	client.Avatar = kefuSeat.Avatar
	client.Custs = make(map[string]*CustClient)

	client.Hub.SeatRegister <- client // 注册客户端

	go client.WritePump()
	go client.ReadPump()
}
