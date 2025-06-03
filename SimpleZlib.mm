#import "SimpleZlib.h"
#import "zlib/zlib.h"

@interface SimpleZlib()

@end

@implementation SimpleZlib
- (NSData*)zlibDeflate:(NSData*)compressedData {
  if ([compressedData length] == 0) return nil;

  NSUInteger fullLength = [compressedData length];
  NSUInteger halfLength = [compressedData length] / 2;

  NSMutableData* decompressed = [NSMutableData dataWithLength:fullLength + halfLength];
  BOOL done = NO;
  int status;

  z_stream strm;
  strm.next_in = (Bytef*)[compressedData bytes];
  strm.avail_in = (unsigned)[compressedData length];
  strm.total_out = 0;
  strm.zalloc = Z_NULL;
  strm.zfree = Z_NULL;

  if (inflateInit(&strm) != Z_OK) {
    return nil;
  }
  while (!done) {
    if (strm.total_out >= [decompressed length]) {
      [decompressed increaseLengthBy:halfLength];
    }
    strm.next_out = (Bytef*)[decompressed mutableBytes] + strm.total_out;
    strm.avail_out = (uint)([decompressed length] - strm.total_out);
    status = inflate(&strm, Z_SYNC_FLUSH);
    if (status == Z_STREAM_END) {
      done = YES;
    } else {
      if (status != Z_OK) {
        break;
      }
    }
  }
  if (inflateEnd(&strm) != Z_OK) {
    return nil;
  }
  if (done) {
    [decompressed setLength:strm.total_out];
    return [NSData dataWithData:decompressed];
  } else {
    return nil;
  }
}
@end
