//
//  UIButton+Adjust.m
//  TDButtonDemo
//
//  Created by Terry on 16/5/13.
//  Copyright © 2016年 Terry. All rights reserved.
//

#import "UIButton+Adjust.h"

@implementation UIButton (Adjust)
- (void)setButtonStyle:(TDButtonStyle)style imageTitlePadding:(CGFloat)padding {
    CGRect imageFrame = self.imageView.frame;
    CGRect titleFrame = self.titleLabel.frame;
    CGRect frame = self.frame;
    CGFloat iTop, iLeft, iRight, iBottom;
    CGFloat tTop, tLeft, tRight, tBottom;
    iTop = iLeft = iRight = iBottom = tTop = tLeft = tRight = tBottom = 0.0;
    if (style == TDButtonStyleImageRight) {
        iLeft = titleFrame.size.width + padding / 2.0;
        tLeft = -imageFrame.size.width - padding / 2.0;
    }
    if (style == TDButtonStyleImageUp) {
        CGFloat temp = (frame.size.height - (titleFrame.size.height + imageFrame.size.height + padding)) / 2.0;
        iLeft = frame.size.width / 2.0 - CGRectGetMidX(imageFrame);
        iTop = temp - imageFrame.origin.y;
        
        tLeft = frame.size.width / 2.0 - CGRectGetMidX(titleFrame);
        tTop = temp + imageFrame.size.height + padding - titleFrame.origin.y;
    }
    
    if (style == TDButtonStyleImageBottom) {
        CGFloat temp = (frame.size.height - (titleFrame.size.height + imageFrame.size.height + padding)) / 2.0;
        iLeft = frame.size.width / 2.0 - CGRectGetMidX(imageFrame);
        iTop = temp + titleFrame.size.height + padding - imageFrame.origin.y;
        
        tLeft = frame.size.width / 2.0 - CGRectGetMidX(titleFrame);
        tTop = temp - titleFrame.origin.y;
    }
    if (style == TDButtonStyleDefault) {
        iLeft = -padding /2.0;
        tLeft = padding / 2.0;
    }
    iRight = -iLeft;
    iBottom = -iTop;
    
    tRight = -tLeft;
    tBottom = -tTop;
    self.imageEdgeInsets = UIEdgeInsetsMake(iTop, iLeft, iBottom, iRight);
    self.titleEdgeInsets = UIEdgeInsetsMake(tTop, tLeft, tBottom, tRight);
}
@end
