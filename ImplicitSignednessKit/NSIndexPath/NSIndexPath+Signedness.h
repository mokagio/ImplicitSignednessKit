#import <UIKit/UIKit.h>

@interface NSIndexPath (Signedness)

/**
 *  An index number identifying a section, type-casted to unsigned integer. (read-only)
 */
@property (nonatomic, assign, readonly) NSUInteger unsignedSection;

/**
 *  An index number identifying a row in a section, type-casted to unsigned integer. (read-only)
 */
@property (nonatomic, assign, readonly) NSUInteger unsignedRow;

@end
