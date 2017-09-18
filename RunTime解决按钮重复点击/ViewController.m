//
//  ViewController.m
//  RunTime解决按钮重复点击
//
//  Created by 胡高广 on 2017/9/18.
//  Copyright © 2017年 jinshuaier. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+recurClick.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点击" forState:(UIControlStateNormal)];
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(click:) forControlEvents:(UIControlEventTouchUpInside)];
    btn.uxy_acceptEventInterval = 2;
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark -- 点击事件
- (void)click:(UIButton *)sender
{
    NSLog(@"haha");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
