package chat

type HubEvent struct {
	h *Hub
}

func (s *HubEvent) CustRegister(client *CustClient) {
	ServiceCustRegister(client)
}

func (s *HubEvent) CustUnregister(client *CustClient) {
	ServiceCustUnregister(client)
}

func (s *HubEvent) SeatRegister(client *SeatClient) {
	ServiceSeatRegister(client)
}

func (s *HubEvent) SeatUnregister(client *SeatClient) {
	ServiceSeatUnregister(client)
}

func (s *HubEvent) Broadcast() {

}