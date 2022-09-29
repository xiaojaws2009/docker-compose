package chat

import (
	"net/http"
	"time"
	"github.com/gorilla/websocket"
)

const (
	// Time allowed to write a message to the peer.  允许向对等方写入消息的时间。
	writeWait = 10 * time.Second

	// Time allowed to read the next pong message from the peer.  允许从对等方读取下一个pong消息的时间
	pongWait = 60 * time.Second

	// Send pings to peer with this period. Must be less than pongWait.  将ping发送给具有此期间的对等方。必须小于pongWait
	pingPeriod = (pongWait * 9) / 10

	// Maximum message size allowed from peer. 允许的最大消息大小。
	maxMessageSize = 512
)

var (
	newline = []byte{'\n'}
	space   = []byte{' '}
)

var Upgrader = websocket.Upgrader{
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,

	// 解决跨域问题
	CheckOrigin: func(r *http.Request) bool {
		return true
	},
}

type Client interface {

}