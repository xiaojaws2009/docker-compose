package log

import (
	"fmt"
	"god/uitils/timewriter"
	// "github.com/natefinch/lumberjack"
	"io"
	"log"
	"os"
	"strings"
	"god/uitils"
)

var (
	//Trace   *log.Logger // 记录所有日志
	Access   *log.Logger // 访问日志
	Info    *log.Logger // debug信息
	//Warning *log.Logger // 需要注意的信息
	Error   *log.Logger // 非常严重的问题
)

func init() {
	// 运行目录
	runDir := uitils.GetCurrentDirectory()
	logDir := fmt.Sprintf("%s%s", runDir[0:strings.LastIndex(runDir, "/")], "/data/logs/")

	// 日志设置
	/* github.com/natefinch/lumberjack
	error := &lumberjack.Logger{
		Filename:   fmt.Sprintf("%s%s", logDir, "/data/logs/error.log"),
		MaxSize:    500, // MB
		MaxBackups: 10,
		MaxAge:     28, //days
		Compress:   true, // disabled by default
	}

	// 访问日志
	access := &lumberjack.Logger{
		Filename:   fmt.Sprintf("%s%s", logDir, "/data/logs/access.log"),
		MaxSize:    500, // MB
		MaxBackups: 10,
		MaxAge:     28, //days
		Compress:   true, // disabled by default
	}

	// 信息日志
	info := &lumberjack.Logger{
		Filename:   fmt.Sprintf("%s%s", logDir, "/data/logs/log.log"),
		MaxSize:    500, // MB
		MaxBackups: 10,
		MaxAge:     28, //days
		Compress:   true, // disabled by default
	}*/

	info := &timewriter.TimeWriter{
		Filename:	"log",
		Dir:        logDir,
		Compress:   false,
		ReserveDay: 30,
	}

	access := &timewriter.TimeWriter{
		Filename:	"access",
		Dir:        logDir,
		Compress:   false,
		ReserveDay: 30,
	}

	err := &timewriter.TimeWriter{
		Filename:	"error",
		Dir:        logDir,
		Compress:   false,
		ReserveDay: 30,
	}

	/*
	Trace = log.New(ioutil.Discard,
		"TRACE: ",
		log.Ldate|log.Ltime|log.Lshortfile)

	Warning = log.New(os.Stdout,
		"WARNING: ",
		log.Ldate|log.Ltime|log.Lshortfile)
	*/

	Info = log.New(io.MultiWriter(info, os.Stderr),
		"INFO: ",
		log.Ldate|log.Ltime|log.Lshortfile)

	Access = log.New(io.MultiWriter(access, os.Stderr),
		"ACCESS: ",
		log.Ldate|log.Ltime)

	Error = log.New(io.MultiWriter(err, os.Stderr),
		"ERROR: ",
		log.Ldate|log.Ltime|log.Lshortfile)
}

/*
Trace.Println("I have something standard to say")
Info.Println("Special Information")
Warning.Println("There is something you need to know about")
Error.Println("Something has failed")
*/