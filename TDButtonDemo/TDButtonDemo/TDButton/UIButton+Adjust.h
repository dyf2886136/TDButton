//
//  UIButton+Adjust.h
//  TDButtonDemo
//
//  Created by Terry on 16/5/13.
//  Copyright © 2016年 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TDButtonStyle) {
    TDButtonStyleDefault = 0,
    TDButtonStyleImageUp,
    TDButtonStyleImageRight,
    TDButtonStyleImageBottom
};

@interface UIButton (Adjust)
- (void)setButtonStyle:(TDButtonStyle)style imageTitlePadding:(CGFloat)padding;
@end
