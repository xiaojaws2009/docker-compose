package uitils

import (
	"github.com/gin-gonic/gin"
	"god/server/entity"
	"net/http"
)

func RespondWithMessage(c *gin.Context, code int, message string, data interface{}) {
	resp := entity.Message{Code:code, Message:message, Data:data}
	c.JSON(http.StatusOK, resp)
}