# docker-compos项目环境安装

##
compose-lnmp：安装lnmp环境（openresty+php71+php_swoole81+redis7+mongo）\
compose-go：golang环境(go1.18) \
compose-centos：centos7.6系统 \

```
1、登录harbor：
docker login -u xiaojuezhi -p Aimei4620 http://114.116.102.175:6080
2、编译镜像
docker build -t php_swoole:v1.0 ./
2、镜像标签
docker tag php_swoole:v1.0 114.116.102.175:6080/library/php_swoole:v1.0
3、推送到远程
docker push 114.116.102.175:6080/library/php_swoole:v1.0
4、拉取镜像
docker pull 114.116.102.175:6080/library/php_swoole:v1.0
```
