# ImplicitSignednessKit

ImplicitSignednessKit, on top of having the most sad name ever seen in the world of open source libraries, is a tool for people that:

1. Like to use Xcode in the hard mode.
2. Don't want to have to manually type cast things things like `[array count]` or `indexPath.row`.

### Signedness

```objc
@interface NSArray (Signedness)

/**
 *  The number of objects in the array, type-casted to NSInteger.
 *
 *  @return The number of objects in the array.
 */
- (NSInteger)integerCount;

@end

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
```

---

(c) 2015 - Giovanni Lodi [@mokagio](https://twitter.com/mokagio)
