# UIImageView-Placekitten
=======================

This is a simple category on UIImageView that downloads placeholder images from [placekitten](www.placekitten.com). It can be used during development when you need to show an image in an image view but are too lazy to setup an placeholder image that fits. Often image sizes change during development and it's a waste of time to keep placeholder images up to date. This category downloads placeholder images displaying cute kitten pictures that always fit to the current size of the image view. Downloading takes place in the background and the image view shows an activity indicator while downloading the placeholder image.

## Installation  
Clone this repository or download the .zip-file and just copy the two source files for the category into your own project. 

## Usage  
There are three methods in the category.

	+ (instancetype)placeholderImageViewWithFrame:(CGRect)frame;

Instantiates a new UIImageView object with the given frame and loads a placeholder image using the *setPlaceholderImage* method.

	- (void)setPlaceholderImage;

Loads a placeholder image from [placekitten.com](www.placekitten.com) fitting to the bounds of the image view. Download takes place on a background queue using Grand Central Dispatch.

	- (void)setPlaceholderImageWithCompletionBlock:(void (^)())completion;

Loads a placeholder image from [placekitten.com](www.placekitten.com) fitting to the bounds of the image view. Download takes place on a background queue using Grand Central Dispatch and a completion block is invoked when the download has finished and the image was set.

## Licensing
The source code is published under a **public domain license**. Do whatever you want with the source code and spread kittens over the world!