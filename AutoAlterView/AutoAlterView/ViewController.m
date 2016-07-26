//
//  ViewController.m
//  AutoAlterView
//
//  Created by 刘泽 on 16/6/24.
//  Copyright © 2016年 liuze. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIAlertController *alter = [UIAlertController alertControllerWithTitle:@"提示" message:@"这是系统的弹框" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"取消操作");
        
    }];
    
    UIAlertAction *requireAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"确定操作");
        
    }];
    
    
    [alter addAction:cancelAction];
    
    [alter addAction:requireAction];
    
    //KVO 修改颜色
    [cancelAction setValue:[UIColor redColor] forKey:@"titleTextColor"];
    [requireAction setValue:[UIColor redColor] forKey:@"titleTextColor"];
    
    
    NSLog(@"testBranch");
        NSLog(@"testBranch");
        NSLog(@"testBranch");
        NSLog(@"testBranch");
    
    [self presentViewController:alter animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
