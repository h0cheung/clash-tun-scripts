#include <fstream>
#include <iostream>
#include <sys/stat.h>

int main(int argc, char *argv[]) {
  if (argc != 2) {
    std::cerr << "Wrong number of arguments: 1, " << argc - 1 << std::endl;
    return -1;
  } else {
    std::ofstream fout;
    struct stat sb;
    if(stat("/sys/fs/cgroup/system.slice/", &sb), S_ISDIR(sb.st_mode))
      fout.open("/sys/fs/cgroup/bypass_proxy/cgroup.procs");
    else
      fout.open("/sys/fs/cgroup/net_cls/bypass_proxy/tasks");
    fout << argv[1] << std::endl;
  }
}
