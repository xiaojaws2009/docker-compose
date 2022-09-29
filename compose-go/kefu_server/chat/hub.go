package chat

// clients. 定义一个集中处理服务结构
type Hub struct {
	// 所有客户端用户
	Custs map[string]*CustClient

	// 当前客服座席数
	Seats map[int]*SeatClient

	// 单播发送给客服端
	UnicastCustClient chan *CustClient
	UnicastSeatClient chan *SeatClient

	// 广播的通道
	Broadcast chan []byte

	// 接入
	CustRegister chan *CustClient
	SeatRegister chan *SeatClient

	// 关闭
	CustUnregister chan *CustClient
	SeatUnregister chan *SeatClient
}

// 创建一个消息集中处理服务
func NewHub() *Hub {
	return &Hub{
		Broadcast:  make(chan []byte),
		CustRegister:   make(chan *CustClient),
		SeatRegister:   make(chan *SeatClient),

		CustUnregister: make(chan *CustClient),
		SeatUnregister: make(chan *SeatClient),

		Custs:    make(map[string]*CustClient),
		Seats:    make(map[int]*SeatClient),
	}
}

// 运行消息处理中心
func (h *Hub) Run() {
	hubEvent := &HubEvent{h:h}

	for {
		select {
		case client := <-h.CustRegister:						// 有新的客服端接入
			h.Custs[client.Uuid] = client
			hubEvent.CustRegister(client)

		case client := <-h.SeatRegister:							// 有新的座席接入
			h.Seats[client.SeatId] = client
			hubEvent.SeatRegister(client)

		case client := <-h.CustUnregister:						// 有客服端断开连接
			hubEvent.CustUnregister(client)
			if _, ok := h.Custs[client.Uuid]; ok {
				delete(h.Custs, client.Uuid)
				close(client.Send)
			}

		case client := <-h.SeatUnregister:							// 有座席断开连接
			hubEvent.SeatUnregister(client)
			if _, ok := h.Seats[client.SeatId]; ok {
				delete(h.Seats, client.SeatId)
				close(client.Send)
			}

		case message := <-h.Broadcast:								// 消息广播
			for chatId := range h.Custs {
				select {
				case h.Custs[chatId].Send <- message:
				default:
					close(h.Custs[chatId].Send)
					delete(h.Custs, chatId)
				}
			}

			hubEvent.Broadcast()
		}
	}
}