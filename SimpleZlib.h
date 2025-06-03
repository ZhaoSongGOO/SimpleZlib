#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface SimpleZlib:NSObject
- (NSData*)zlibDeflate:(NSData*)compressedData;
@end

NS_ASSUME_NONNULL_END

