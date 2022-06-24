FROM phpswoole/swoole:4.8.8-php8.1-alpine

#更换安装源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update && apk add --no-cache \
    gcc libc-dev make libzip libcurl libzip-dev libxml2 libxml2-dev \
    oniguruma oniguruma-dev freetype-dev autoconf \
    libpng-dev libjpeg-turbo-dev curl-dev zlib-dev \

    && docker-php-ext-install mysqli pdo pdo_mysql \
    curl zip mbstring bcmath xml sockets soap pcntl \

    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \

    && pecl update-channels \
    && pecl install redis-stable \
    && docker-php-ext-enable redis

# 声明服务端口
EXPOSE 9501

COPY --chown=root:root ./www /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html
RUN chmod +x /usr/share/nginx/html/server.sh

#ENTRYPOINT [ "/bin/sh", "-c", "./server.sh" ]