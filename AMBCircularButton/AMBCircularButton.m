//
//  AMBCircularButton.m
//  AMBCircularButton
//
//  Created by amb on 28/02/14.
//  Copyright (c) 2014 AMB. All rights reserved.
//

#import "AMBCircularButton.h"

@implementation AMBCircularButton

#pragma mark - Init methods

- (id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.clipsToBounds = YES;
}

#pragma mark - Layout subviews

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self addMaskToBounds:self.frame];
}

#pragma mark - Image set methods

- (void)setCircularImageWithURL:(NSURL *)imageURL
                       forState:(UIControlState)state
{
    [self setImageWithURL:imageURL forState:state];
}

- (void)setCircularImageWithURL:(NSURL *)imageURL
                       forState:(UIControlState)state
               placeholderImage:(UIImage *)placeholder
{
    [self setImageWithURL:imageURL forState:state placeholderImage:placeholder];
}

- (void)setCircularImageWithURL:(NSURL *)imageURL
                       forState:(UIControlState)state
               placeholderImage:(UIImage *)placeholder
                        options:(SDWebImageOptions)options
{
    [self setImageWithURL:imageURL forState:state placeholderImage:placeholder options:options];
}

#pragma mark - Circular mask

- (void)addMaskToBounds:(CGRect)maskBounds
{
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
	
    CGPathRef maskPath = CGPathCreateWithEllipseInRect(maskBounds, NULL);
    maskLayer.bounds = maskBounds;
	maskLayer.path = maskPath;
    maskLayer.fillColor = [UIColor blackColor].CGColor;
    CGPathRelease(maskPath);
    
    CGPoint point = CGPointMake(maskBounds.size.width/2, maskBounds.size.height/2);
    maskLayer.position = point;
    
	[self.layer setMask:maskLayer];
}

@end
