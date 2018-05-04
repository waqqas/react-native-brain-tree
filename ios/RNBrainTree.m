
#import "RNBrainTree.h"

@implementation RNBrainTree

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(showDropIn:(NSString *)clientTokenOrTokenizationKey callback:(RCTResponseSenderBlock)callback)
{
    BTDropInRequest *request = [[BTDropInRequest alloc] init];
    BTDropInController *dropIn = [[BTDropInController alloc] initWithAuthorization:clientTokenOrTokenizationKey request:request handler:^(BTDropInController * _Nonnull controller, BTDropInResult * _Nullable result, NSError * _Nullable error) {
        
        callback(@[[NSNull null], events]);
    }];
    [self presentViewController:dropIn animated:YES completion:nil];
}

@end
