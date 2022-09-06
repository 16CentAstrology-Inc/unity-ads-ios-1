#import "USRVWebRequest.h"
#import "USRVWebRequestFactory.h"

typedef void (^UnityServicesWebRequestCompletion)(NSString *url, NSError *error, NSString *response, long responseCode, NSDictionary<NSString *, NSString *> *headers);

@interface USRVWebRequestOperation : NSOperation

@property (nonatomic, strong) id<USRVWebRequest> request;
@property (nonatomic, strong) UnityServicesWebRequestCompletion completeBlock;

- (instancetype)initWithUrl: (NSString *)url requestType: (NSString *)requestType headers: (NSDictionary<NSString *, NSArray<NSString *> *> *)headers body: (NSString *)body completeBlock: (UnityServicesWebRequestCompletion)completeBlock connectTimeout: (int)connectTimeout factory: (id<IUSRVWebRequestFactory>)factory;

@end
