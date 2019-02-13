//
//  ViewController.m
//  CrashDemo
//
//  Created by tony on 2019/2/13.
//  Copyright © 2019年 Morse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSMutableArray * arrM = [NSMutableArray arrayWithArray:@[@"1"]];
    [arrM removeObjectAtIndex:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
