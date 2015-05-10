#import "NSIndexPath+Signedness.h"

@implementation NSIndexPath (Signedness)

- (NSUInteger)unsignedSection {
    return (NSUInteger)self.section;
}

- (NSUInteger)unsignedRow {
    return (NSUInteger)self.row;
}

@end
