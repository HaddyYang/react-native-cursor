#import "RNCursor.h"
#import <React/RCTUtils.h>

@implementation RNCursor

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(setCursor,
        setCursorWithType:
        (NSString *) type
) {
    [[NSCursor valueForKey:[type stringByAppendingString:@"Cursor"]] performSelector:@selector(set)];
}

@end
