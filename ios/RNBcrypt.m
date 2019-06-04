
#import "RNBcrypt.h"

@implementation RNBcrypt

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(verifyPassword:(NSString *)password hash:(NSString *)hash)
{
    RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end
  
