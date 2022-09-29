package db

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"god/conf"
)

var DB *gorm.DB

func init() {
	var err error

	dbhost := conf.Env.GetValue("mysql", "db_host")
	dbname := conf.Env.GetValue("mysql", "db_name")
	dbuser := conf.Env.GetValue("mysql", "db_user")
	dbpwd := conf.Env.GetValue("mysql", "db_pwd")
	dbport := conf.Env.GetValue("mysql", "db_port")
	dbcharset := conf.Env.GetValue("mysql", "db_charset")

	sqlconnect := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=%s&parseTime=true&loc=%s", dbuser, dbpwd, dbhost, dbport, dbname, dbcharset, "Asia%2FShanghai")
	DB, err = gorm.Open("mysql", sqlconnect)
	if err != nil {
		panic("connect db failed:" + err.Error())
		return
	}

	fmt.Println("数据初始化完成...")
}
