#import "UIImageView+Placeholder.h"

@implementation UIImageView (Placeholder)

+ (instancetype)placeholderImageViewWithFrame:(CGRect)frame
{
    // Instantiate a new UIImageView object with the specified frame
	UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    // Download placeholder image
	[imageView setPlaceholderImage];
	
	return imageView;
}

- (void)setPlaceholderImage
{
    // Call the placeholder method without a completion handler
    [self setPlaceholderImageWithCompletionBlock:NULL];
}

- (void)setPlaceholderImageWithCompletionBlock:(void (^)())completion
{
    // Getting device screen scale so that the placeholder image is sharp enough.
    CGFloat scale = [[UIScreen mainScreen] scale];
    
    // Instantiate and configure an UIActivityIndicatorView to visualize the download
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:self.bounds];
    activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [activityIndicatorView startAnimating];
    [self addSubview:activityIndicatorView];
    
    // Dispatch a background queue for downloading the placeholder image
	dispatch_async(dispatch_queue_create("com.bd.kitten_queue", nil), ^{
        // Concatenate the placekitten.com URL from the image view bounds and screen scale
		NSString *urlString = [NSString stringWithFormat:@"http://placekitten.com/%i/%i", (int)(CGRectGetWidth(self.bounds) * scale), (int)(CGRectGetHeight(self.bounds) * scale)];
        
        // Download the image
		UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]]];
		
        // Update the placeholder image on the main queue
		dispatch_async(dispatch_get_main_queue(), ^{
            // Remove the activity indicator
            [activityIndicatorView stopAnimating];
            [activityIndicatorView removeFromSuperview];
            
            // Set the placeholder image
			self.image = image;

            // Call the completion handler
			if (completion)
			{
				completion();
			}
		});
	});
}

@end
