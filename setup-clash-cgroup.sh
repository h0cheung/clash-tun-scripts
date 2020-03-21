#!/bin/bash
if [ -d "/sys/fs/cgroup/net_cls/bypass_proxy" ];then
exit 0
fi

mkdir -p /sys/fs/cgroup/net_cls/bypass_proxy
echo "$PROXY_BYPASS_CGROUP" > /sys/fs/cgroup/net_cls/bypass_proxy/net_cls.classid
chmod 666 /sys/fs/cgroup/net_cls/bypass_proxy/tasks
