# UIImageView-Placekitten
=======================

This is a simple category on UIImageView that downloads placeholder images from [placekitten](www.placekitten.com). It can be used during development when you need to show an image in an image view but are too lazy to setup an placeholder image that fits. Often image sizes change during development and it's a waste of time to keep placeholder images up to date. This category downloads placeholder images displaying cute kitten pictures that always fit to the current size of the image view. Downloading takes place in the background and the image view shows an activity indicator while downloading the placeholder image.

## Installation  
Clone this repository or download the .zip-file and just copy the two source files for the category into your own project. 

## Usage  
There are three methods in the category.

+ (instancetype)placeholderImageViewWithFrame:(CGRect)frame;

- (void)setPlaceholderImage;

- (void)setPlaceholderImageWithCompletionBlock:(void (^)())completion;

