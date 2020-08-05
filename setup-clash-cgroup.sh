#!/bin/bash
if [ -d "/sys/fs/cgroup/bypass_proxy" ];then
exit 0
fi

mkdir -p /sys/fs/cgroup/bypass_proxy
