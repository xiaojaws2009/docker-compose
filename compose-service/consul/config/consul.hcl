server = true
ui_config{
enabled = true
}
node_name = "consul" # 修改这里
datacenter = "consul" # 修改这里
data_dir = "../consul/data" # 数据目录
log_level = "INFO"
log_file = "consul/log" # 日志目录
bind_addr = "127.0.0.1" # 绑定网卡IP
client_addr = "0.0.0.0"
bootstrap_expect=1