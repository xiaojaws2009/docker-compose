package task

import (
	"github.com/robfig/cron"
	"god/core/log"
	"god/task/controller"
)

func init()  {
	go message()
}

// 消息相关的任务
func message()  {
	// 启动时运行一次
	{
		controller.CheckStartSeatOnline()
		controller.CheckStartCustOnline()
	}

	cron := cron.New()

	{ // 保存消息到数据库
		spec := "0/10 * * * * *"
		err := cron.AddFunc(spec, func() {
			controller.SaveMessageToDatabase()
		})
		if err != nil {
			log.Error.Print(err)
		}
	}

	{ //检查启动时是否坐席在线,检查启动时是否用户在线
		spec := "* 5 1 * * *"
		err := cron.AddFunc(spec, func() {
			log.Info.Printf("task CheckStartOnline")
			controller.CheckStartSeatOnline()
			controller.CheckStartCustOnline()
		})
		if err != nil {
			log.Error.Print(err)
		}
	}
	cron.Start()

	select {}
}