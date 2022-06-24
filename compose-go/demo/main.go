package main

import (
    "github.com/gin-gonic/gin"
    "log"
    "net/http"
)

func main() {
    r := gin.Default()
    r.GET("/", handlerindex)
    r.Run(":9601") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}

func handlerindex(ctx *gin.Context) {
    log.Println("hello world handlerindex")
    ctx.JSON(http.StatusOK, `handlerindex`)
}