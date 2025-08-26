#include "packages/lib/Message.hpp"
#include <iostream>
extern "C" int app_main(int argc, const char* argv[]);

int main(int argc, const char* argv[]) {
    Message msg{"hello world from app!"};
    std::cout << msg.value << std::endl;
    return app_main(argc, argv);
}