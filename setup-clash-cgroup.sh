#!/bin/bash
if [ -d "/sys/fs/cgroup/bypass_proxy" ] || [ -d "/sys/fs/cgroup/net_cls/bypass_proxy" ];then
exit 0
fi
if [ -d /sys/fs/cgroup/system.slice/ ]; then
    mkdir -p /sys/fs/cgroup/bypass_proxy
else
    mkdir -p /sys/fs/cgroup/net_cls/bypass_proxy
    sleep 1
    echo "$PROXY_BYPASS_CGROUP" > /sys/fs/cgroup/net_cls/bypass_proxy/net_cls.classid
fi

exit 0
