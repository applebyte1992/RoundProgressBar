//
//  RoundProgress.m
//  MyDuub
//
//  Created by Masroo Elahi on 14/01/2017.
//  Copyright © 2017 CB. All rights reserved.
//

#import "RoundProgress.h"

@implementation RoundProgress

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
//
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    [self setCustomLayout:[self.subviews objectAtIndex:1]];
}
-(void)setCustomLayout:(UIView *)view{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                   byRoundingCorners:UIRectCornerBottomRight|UIRectCornerTopRight
                                                         cornerRadii:CGSizeMake(self.frame.size.height/2.0, self.frame.size.height/2.0)];
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    
    // Set the newly created shape layer as the mask for the image view's layer
    view.layer.mask = maskLayer;
    [view.layer setMasksToBounds:YES];
    
}


@end
