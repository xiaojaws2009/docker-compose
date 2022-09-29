package cache

import (
	"god/conf"
	"time"
)

const(
	CUST_TOKEN	= "kf.cust_token_%v"	// 客户端token
	SEAT_TOKEN	= "kf.seat_token_%v"	// 坐席token，与管理后台的key名同步
)

// 本地内存缓存,用于数据输出缓存
var Store InterCache = NewGocache()
var Cache InterCache = NewRedis(&RedisOpts{Host:conf.Env.GetValue("redis", "redis_host"), Password:conf.Env.GetValue("redis", "redis_auth"), Database:conf.Env.GetValueInt("redis", "redis_db")})

//Cache interface
type InterCache interface {
	Get(key string) []byte
	GetValue(key string) ([]byte, bool)
	Set(key string, val interface{}, timeout time.Duration) error
	IsExist(key string) bool
	Delete(key string) error
	Flush()
	Count() int
}
