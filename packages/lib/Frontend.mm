#import <Metal/Metal.h>
#include "packages/lib/Message.hpp"

extern "C" int app_main(int argc, const char* argv[]) {
  @autoreleasepool {
    Message message {"hello world" };
    NSLog(@"app_main: message=%s", message.value.c_str());
    return 0;
  }
}
