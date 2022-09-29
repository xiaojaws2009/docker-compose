ps -ef|grep kefu_server|grep -v grep|awk '{print $2}'|xargs kill -9
nohup /alidata/wwwroot/kefuroot/go/kefu_server/bin/kefu_server >/dev/null 2>&1 &