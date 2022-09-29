package hub

import "god/chat"

var Hub *chat.Hub

func init() {
	Hub = chat.NewHub()
}
