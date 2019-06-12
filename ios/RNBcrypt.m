
#import "RNBcrypt.h"

#import "JFBCrypt.h"

@implementation RNBcrypt

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(verifyPassword: (NSString *)password
                  hash: (NSString *)hash
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)
{
    if ([JFBCrypt checkPassword:password withHash:hash]) {
        resolve(@YES);
    } else {
        reject(@"0", @"Failed to validate password", [NSError errorWithDomain:@"bcrypt" code:0 userInfo:nil]);
    }
}

@end
  
