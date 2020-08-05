## Clash-tun Scripts

Some scripts to use with [[comzyh/clash](https://github.com/comzyh/clash)] and cgroup v2.

**Only for Linux with cgroup v2 support**. For systemd user, add `systemd.unified_cgroup_hierarchy=1` to kernel parameters. You can also try other way to mount cgroup v2 at `/sys/fs/cgroup`

Archlinux users can use the package `clash-tun` in AUR.

`bypass-proxy <command>` to run command and make it bypass the clash proxy.

`bypass-proxy-pid <pid>` to make a process bypass the clash proxy.

#### Manual Setup

Install `*.sh` scripts to `/opt/script/`, `bypass-proxy` and `bypass-proxy-pid` (need to be compiled, you can use `g++ -O2 -static bypass-proxy-pid.cc -o bypass-proxy-pid`) to `/usr/bin/`, env to `/etc/clash-tun/`, and then use the systemd services;
