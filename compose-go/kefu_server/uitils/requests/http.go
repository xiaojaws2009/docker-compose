package requests

import (
	"net/http"
	"io/ioutil"
	"strings"
	"time"
)

func Get(url string) (string, int, error) {
	var content string = ""
	var err error = nil
	var httpCode = 0

	//rep, err := http.Get(url)
	c := &http.Client{
		Timeout: 30 * time.Second,
	}
	/*
	c := &http.Client{
		Transport: &http.Transport{
			Dial: func(netw, addr string) (net.Conn, error) {
				conn, err := net.DialTimeout(netw, addr, time.Second * 3600)
				if err != nil {
					return nil, err
				}
				conn.SetDeadline(time.Now().Add(time.Second * 3600))
				return conn, nil
			},
			ResponseHeaderTimeout: time.Second * 3600,
		},
	}*/
	rep, err := c.Get(url)

	if err == nil {
		defer rep.Body.Close()
		httpCode = rep.StatusCode

		if rep.StatusCode == http.StatusOK {
			body, err := ioutil.ReadAll(rep.Body)
			if err == nil {
				content = string(body)
			}
		}
	}
	return content, httpCode, err
}

func Post(url string, param string) (string, int, error) {
	var content string = ""
	var err error = nil
	var httpCode int  = 0

	c := &http.Client{
		Timeout: 30 * time.Second,
	}

	/*
	c := &http.Client{
		Transport: &http.Transport{
			Dial: func(netw, addr string) (net.Conn, error) {
				conn, err := net.DialTimeout(netw, addr, time.Second * 3600)
				if err != nil {
					return nil, err
				}
				conn.SetDeadline(time.Now().Add(time.Second * 3600))
				return conn, nil
			},
			ResponseHeaderTimeout: time.Second * 3600,
		},
	}*/

	rep, err := c.Post(url, "application/x-www-form-urlencoded", strings.NewReader(param))

	if err == nil {
		defer rep.Body.Close()
		httpCode = rep.StatusCode

		if rep.StatusCode == http.StatusOK {
			body, err := ioutil.ReadAll(rep.Body)
			if err == nil {
				content = string(body)
			}
		}
	}

	return content, httpCode, err
}