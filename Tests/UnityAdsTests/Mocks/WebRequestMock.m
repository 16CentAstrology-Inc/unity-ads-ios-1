#import "WebRequestMock.h"

@implementation WebRequestMock

- (void)cancel {
}

- (instancetype)initWithUrl: (NSString *)url requestType: (NSString *)requestType headers: (NSDictionary<NSString *, NSArray<NSString *> *> *)headers connectTimeout: (int)connectTimeout {
    self = [super init];
    return self;
}

- (NSData *)makeRequest {
    self.makeRequestCount += 1;
    [_exp fulfill];

    if (_sleepTime && !NSThread.isMainThread) {
        [NSThread sleepForTimeInterval: _sleepTime];
    }

    return _expectedData;
}

- (BOOL)is2XXResponse {
    return !self.isResponseCodeInvalid;
}

@end
