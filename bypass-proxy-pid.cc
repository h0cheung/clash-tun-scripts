#include <fstream>
#include <iostream>

int main(int argc, char *argv[]) {
  if (argc != 2) {
    std::cerr << "Wrong number of arguments: 1, " << argc - 1 << std::endl;
    return -1;
  } else {
    std::ofstream fout("/sys/fs/cgroup/bypass_proxy/cgroup.procs");
    fout << argv[1] << std::endl;
  }
}
