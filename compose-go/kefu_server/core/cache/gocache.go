package cache

import (
	"github.com/patrickmn/go-cache"
	"time"
)

type Gocache struct {
	conn *cache.Cache
}

//NewMemcache create new memcache
func NewGocache() *Gocache {
	c := cache.New(5*time.Minute, 10*time.Minute)
	return &Gocache{c}
}

func (t *Gocache) Get(key string) []byte {
	var data []byte
	if x, found := t.conn.Get(key); found {
		data = x.([]byte)
	}
	return data
}

func (t *Gocache) GetValue(key string) ([]byte, bool) {
	var data []byte
	var isExist bool = false
	if x, found := t.conn.Get(key); found {
		data = x.([]byte)
		isExist = found
	}
	return data, isExist
}

func (t *Gocache) Set(key string, value interface{}, timeout time.Duration) error {
	var err error = nil
	if timeout <= 0 {
		timeout = cache.DefaultExpiration
	}
	t.conn.Set(key, value, timeout)
	return err
}

func (t *Gocache) IsExist(key string) bool {
	var isExist bool = false
	if _, found := t.conn.Get(key); found {
		isExist = true
	}
	return isExist
}

func (t *Gocache) Delete(key string) error {
	var err error = nil
	t.conn.Delete(key)
	return err
}

func (t *Gocache) Flush() {
	t.conn.Flush()
}

func (t *Gocache) Count() int {
	return t.conn.ItemCount()
}