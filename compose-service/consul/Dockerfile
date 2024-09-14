FROM hashicorp/consul:1.16
MAINTAINER xiaojuezhi <"372019924@qq.com">
# https://github.com/hashicorp/docker-consul/blob/9bd2aa7ecf2414b8712e055f2374699148e8941c/0.X/Dockerfile

# 声明服务端口
# Server RPC is used for communication between Consul clients and servers for internal
# request forwarding.
EXPOSE 8300

# Serf LAN and WAN (WAN is used only by Consul servers) are used for gossip between
# Consul agents. LAN is within the datacenter and WAN is between just the Consul
# servers in all datacenters.
EXPOSE 8301 8301/udp 8302 8302/udp

# HTTP and DNS (both TCP and UDP) are the primary interfaces that applications
# use to interact with Consul.
EXPOSE 8500 8600 8600/udp

RUN mkdir -p /consul/config && \
    chown -R consul:consul /consul

# 复制配置文件
COPY ./consul-config.json /consul/config/consul-config.json
COPY ./consul-kv.json /consul/data/consul-kv.json

# 启动Consul agent,（参数"config-dir=/consul/config"无效？）
CMD ["agent", "-dev", "-client", "0.0.0.0"]