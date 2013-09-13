//
//  ViewController.m
//  PlaceKittenExample
//
//  Created by Benni on 13.09.13.
//  Copyright (c) 2013 Benni. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Placeholder.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *outletImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Set placeholder image for image view outlet set via storyboard
    [self.outletImageView setPlaceholderImage];

	// Create iamge view dynamically, automatically with placeholder image.
    UIImageView *dynamicImageView = [UIImageView placeholderImageViewWithFrame:CGRectMake(20.0, CGRectGetHeight(self.outletImageView.frame) + 40.0, CGRectGetWidth(self.outletImageView.frame), CGRectGetHeight(self.outletImageView.frame) * 1.3)];
    [self.view addSubview:dynamicImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
