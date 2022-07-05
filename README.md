# docker-compos项目环境安装

##
compose-lnmp：安装lnmp环境（openresty+php71+php_swoole81+redis7+mongo）\
compose-go：golang环境(go1.18) \
compose-centos：centos7.6系统

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

```
1、docker-compose启用镜像
docker-compose up -d (--build) ?? 
* docker-compose up --build -d 根据Dockerfile重新下载需要的镜像并构建容器，也就是说这句相当于是 docker-compose build --no-cache 和 docker-compose up -d 的集合体，意味着构建镜像的时候是根据Dockerfile的最新内容来的，而不会使用缓存，这样就避免了构建镜像时由于缓存造成的影响。
————————————————
版权声明：本文为CSDN博主「nvmtest」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/sndgv926468/article/details/124054316

或：docker-compose build --no-cache && docker-compose up -d
```