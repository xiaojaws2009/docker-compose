package chat

import (
	"encoding/json"
	"github.com/gorilla/websocket"
	"god/chat/answer"
	"god/chat/entity"
	"god/core/log"
	"god/core/queue"
	"god/uitils"
	"time"
)

// Client is a middleman between the websocket connection and the hub.
type SeatClient struct {
	Hub *Hub

	// The websocket connection.
	Conn *websocket.Conn

	// 与当前坐席连接的终端
	Custs map[string]*CustClient

	// 发送的消息内容
	Send chan []byte

	UserId int			// 云帐号ID
	SeatId int			// 坐席ID
	Nickname string		// 呢称
	Avatar string		// 头像
}

// 读出消息内容进行转发
func (c *SeatClient) ReadPump() {
	defer func() {
		log.Info.Println("SeatUnregister==============")
		c.Hub.SeatUnregister <- c
		c.Conn.Close()
	}()

	// 设置相关的读取消息参数
	c.Conn.SetReadLimit(maxMessageSize)
	c.Conn.SetReadDeadline(time.Now().Add(pongWait))
	c.Conn.SetPongHandler(func(string) error { c.Conn.SetReadDeadline(time.Now().Add(pongWait)); return nil })

	// 获取消息
	for {
		_, contents, err := c.Conn.ReadMessage()
		if err != nil {
			if websocket.IsUnexpectedCloseError(err, websocket.CloseGoingAway, websocket.CloseAbnormalClosure) {
				log.Error.Printf("seat readPump error: %v", err)
			}
			break
		}

		// 解析ws消息内容
		wsMessage := entity.WsMessage{}
		{
			err := json.Unmarshal(contents, &wsMessage)
			if err != nil {
				log.Error.Printf("cust readPump error: %v", err)
			}
			wsMessage.Data.MessageId = uitils.GetMessageId()
			wsMessage.Data.Origin = 2
			contents, _ = json.Marshal(wsMessage)
		}

		// 单播
		if wsMessage.Event == "message" {
			//contents = bytes.TrimSpace(bytes.Replace(contents, newline, space, -1))
			if wsMessage.Data.Contents != "" && wsMessage.Uuid != "" {
				// 发给自己
				c.Send <- contents
				// 发送给客户
				if _, ok := c.Hub.Custs[wsMessage.Uuid]; ok {
					// 发送消息给客户
					c.Hub.Custs[wsMessage.Uuid].Send <- contents
					// 保存到队列中保存到数据库当中
					queue.MessageQueue.Push(contents)
				} else {
					c.Send <- answer.Message(wsMessage.Uuid, wsMessage.SeatId, answer.NotOnlineMessage)
					log.Error.Printf("1001,seat readPump not find : %v", string(contents))
				}
			} else {
				c.Send <- answer.Message(wsMessage.Uuid, wsMessage.SeatId, answer.SendFailMessage)
				log.Info.Printf("1002,seat readPump not find : %v", string(contents))
			}
		}

		// 将消息推送到广播通道
		//c.Hub.Broadcast <- message
	}
}

// 发消息给自己
func (c *SeatClient) WritePump() {
	ticker := time.NewTicker(pingPeriod)	// 检查写入消息是否超时，心跳检查
	defer func() {
		ticker.Stop()
		c.Conn.Close()
	}()
	for {
		select {
		case message, ok := <-c.Send:
			c.Conn.SetWriteDeadline(time.Now().Add(writeWait))
			if !ok {
				// The hub closed the channel.设置超时出错时，进行关闭通知
				c.Conn.WriteMessage(websocket.CloseMessage, []byte{})
				return
			}

			// 消息发送
			w, err := c.Conn.NextWriter(websocket.TextMessage)
			if err != nil {
				log.Error.Printf("seat writePump error: %v", err)
				return
			}
			w.Write(message)

			// 将队列中的的聊天消息添加到当前websocket消息中
			n := len(c.Send)
			for i := 0; i < n; i++ {
				w.Write(newline)
				w.Write(<-c.Send)
			}

			if err := w.Close(); err != nil {
				return
			}
		case <-ticker.C:	// 监听是否超时
			c.Conn.SetWriteDeadline(time.Now().Add(writeWait))
			if err := c.Conn.WriteMessage(websocket.PingMessage, nil); err != nil {
				log.Error.Printf("seat writePump error: %v", err)
				return
			}
		}
	}
}