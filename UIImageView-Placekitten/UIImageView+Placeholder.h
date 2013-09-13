#import <UIKit/UIKit.h>

/**
 Category to load and set a placeholder image from placekitten.com. The placeholder is fetched in the background via GCD and fits to the screen scale of the device
 **/
@interface UIImageView (Placeholder)

/**
 Instantiates a new UIImageView object with the given frame and loads a placeholder image using the setPlaceholderImage method.
 **/
+ (instancetype)placeholderImageViewWithFrame:(CGRect)frame;

/**
 Loads a placeholder image from placekitten.com fitting to the bounds of the image view. Download takes place on a background queue using Grand Central Dispatch.
 **/
- (void)setPlaceholderImage;

@end
