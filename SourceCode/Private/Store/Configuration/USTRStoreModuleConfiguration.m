#import "USTRStoreModuleConfiguration.h"

@implementation USTRStoreModuleConfiguration

- (NSArray<NSString *> *)getWebAppApiClassList {
    return @[
        @"USTRApiAppSheet",
        @"USTRApiProducts",
        @"USTRApiSKAdNetwork",
        @"UADSApiOverlay"
    ];
}

- (BOOL)resetState: (USRVConfiguration *)configuration {
    return true;
}

- (BOOL)initModuleState: (USRVConfiguration *)configuration {
    return true;
}

- (BOOL)initErrorState: (USRVConfiguration *)configuration code: (UADSErrorState)stateCode message: (NSString *)message {
    return true;
}

- (BOOL)initCompleteState: (USRVConfiguration *)configuration {
    return true;
}

@end
