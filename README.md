## Kr328 的 Clash 配置脚本们

**仅针对 Linux**



#### setup-clash-tun.sh

简单配置 Clash 的 tun 代理



#### clean-clash-tun.sh

清理 clash 的 tun 代理



#### setup-clash-cgroup.sh

配置 绕过 Clash 的 应用的 cgroup



#### clash.service

Clash 的 systemd 服务单元



#### bypass-proxy

利用 cgroup 使部分进程绕过 Clash

用法 `bypass-proxy 命令...`



#### bypass-proxy-pid

同上

用法 `bypass-proxy-pid <PID>`

