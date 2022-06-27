FROM golang:1.18-alpine
MAINTAINER xiaojuezhi <"372019924@qq.com">

# 环境
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPROXY="https://goproxy.cn,direct"

# 代码目录
COPY ./demo /usr/share/go/demo
WORKDIR /usr/share/go/demo

# 编译二进制文件
RUN go mod download && \
	go build -o main ./main.go

# 声明服务端口
EXPOSE 9601

# 启动容器时运行的命令
RUN chmod +x /usr/share/go/demo/main
ENTRYPOINT ["./main"]
