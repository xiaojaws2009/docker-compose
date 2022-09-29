package server

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"god/server/controller"
	"god/server/controller/cust"
	"god/server/controller/seat"
	"god/server/middleware"
	"god/server/service"
	"god/uitils"
	"net/http"
)

// 注册路由
func RegisterHandler(r *gin.Engine) {
	// 资源访问目录
	dir := uitils.GetCurrentDirectory()
	//fs := http.FileServer(http.Dir(fmt.Sprintf("%s/%s", dir, "chat")))
	//http.PathPrefix("/chat/").Handler(http.StripPrefix("/chat/", fs))

	r.StaticFS("/chat", http.Dir(fmt.Sprintf("%s/%s", dir, "chat")))
	r.StaticFS("/static", http.Dir(fmt.Sprintf("%s/%s", dir, "static")))
	r.StaticFS("/uploads", http.Dir(fmt.Sprintf("%s/%s", dir, "uploads")))

	r.Use(middleware.NextHandle)

	// 客户端接口
	r.GET("/api/cust/getAccessToken", cust.GetAccessToken) 						// 获取用户token
	r.GET("/api/cust/getChatInfo", cust.GetChatInfo) 							// 获取聊天信息接口详情接口

	c := r.Group("/api/cust")
	c.Use(service.CustAuthRequired)
	{

		c.GET("/getSeatList", cust.GetSeatList) 								// 获取在线坐席列表接口
		c.GET("/getCustMessageList", cust.GetCustMessageList) 					// 获取客户消息列表接口
		c.GET("/feedback/getFeedbackTypeList", cust.GetFeedbackTypeList) 		// 获取留言类型列表接口
		c.POST("/feedback/doFeedbackContent", cust.DoFeedbackContent) 			// 提交留言内容接口

		c.POST("/doComment", cust.DoComment)									// 提交对坐席的评论
	}

	// 坐席端接口
	s := r.Group("/api/seat")
	s.Use(service.SeatAuthRequired)
	{
		s.GET("/getCustClient", cust.GetCustClient) 							// 获取客户端详情接口
		s.GET("/getSessionCustList", seat.GetSessionCustList) 					// 获取聊天用户列表接口
		s.GET("/getCustList", seat.GetCustList) 								// 获取聊天用户列表接口
		s.GET("/getSeatList", seat.GetSeatList) 								// 获取在线坐席列表接口
		s.GET("/getSeatDetail", seat.GetSeatDetail) 							// 获取坐席详情接口
		s.POST("/doSeatDetail", seat.DoSeatDetail) 								// 坐席资料保存接口

		s.GET("/getSeatMessageList", seat.GetSeatMessageList) 					// 获取消息列表接口
		s.GET("/customer/getCustomerDetail", seat.GetCustomerDetail)			// 获取客户资料
		s.POST("/customer/doSaveCustomer", seat.DoSaveCustomer)					// 保存客户资料
		s.GET("/getAnswerContentList", seat.GetAnswerContentList)				// 获取快捷回复问题列表
		s.GET("/getAnswerTypeList", seat.GetAnswerTypeList)						// 获取快捷回复问题类型列表
		s.POST("/doAnswerType", seat.DoAnswerType)								// 保存快捷回复类型
		s.POST("/doAnswerContent", seat.DoAnswerContent)						// 保存快捷回复内容
		s.POST("/doCustMark", seat.DoCustMark)									// 标记为星标用户

		s.GET("/getCustVisit", seat.GetCustVisit)
		s.POST("/doCustVisit", seat.DoCustVisit)

		s.GET("/delAnswerType", seat.DelAnswerType)
		s.GET("/delAnswerContent", seat.DelAnswerContent)
	}

	// 通用接口
	com := r.Group("/api/com")
	com.POST("/uploadFile", controller.UploadFile)							// 上传文件接口
	com.GET("/getFaceList", controller.GetFaceList)							// 表情包接口地址
	com.POST("/doMessageReadStatus", controller.DoMessageReadStatus)		// 更新消息为读取状态

}