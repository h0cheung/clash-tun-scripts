#!/bin/bash

PROXY_BYPASS_USER="proxy"
PROXY_BYPASS_CGROUP="0x16200000"
PROXY_FWMARK="0x162"
PROXY_ROUTE_TABLE="0x162"
PROXY_DNS_SERVER="127.0.0.1:1053"
PROXY_FORCE_NETADDR="198.18.0.0/16"
PROXY_TUN_DEVICE_NAME="clash0"

if [ -d "/sys/fs/cgroup/net_cls/bypass_proxy" ];then
exit 0
fi

mkdir -p /sys/fs/cgroup/net_cls/bypass_proxy
echo "$PROXY_BYPASS_CGROUP" > /sys/fs/cgroup/net_cls/bypass_proxy/net_cls.classid
chmod 666 /sys/fs/cgroup/net_cls/bypass_proxy/tasks
