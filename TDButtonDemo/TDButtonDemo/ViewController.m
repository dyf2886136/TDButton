//
//  ViewController.m
//  TDButtonDemo
//
//  Created by Terry on 16/5/13.
//  Copyright © 2016年 Terry. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Adjust.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    [self buttonStyle:TDButtonStyleImageUp frame:CGRectMake((screenWidth - 200) / 2.0, 64, 200, 100)];
    [self buttonStyle:TDButtonStyleImageRight frame:CGRectMake((screenWidth - 200) / 2.0, 64 + 120, 200, 100)];
    [self buttonStyle:TDButtonStyleImageBottom frame:CGRectMake((screenWidth - 200) / 2.0, 64 + 240, 200, 100)];
    [self buttonStyle:TDButtonStyleDefault frame:CGRectMake((screenWidth - 200) / 2.0, 64 + 360, 200, 100)];
}

- (UIButton *)buttonStyle:(TDButtonStyle)style frame:(CGRect)frame {
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:@"hello" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"shareb_wx"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
    btn.layer.cornerRadius = 4;
    btn.layer.masksToBounds = YES;
    btn.layer.borderColor = [UIColor blueColor].CGColor;
    btn.layer.borderWidth = 0.5;
    [btn setButtonStyle:style imageTitlePadding:10];
    [self.view addSubview:btn];
    return btn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
