
#import "RNBcrypt.h"

#import <BCryptSwift/BCryptSwift-Swift.h>

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
    if ([BCryptSwift verifyPassword:password matchesHash: hash]) {
        resolve();
    } else {
        reject();
    }
}

@end
  
