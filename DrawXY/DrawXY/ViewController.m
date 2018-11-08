//
//  ViewController.m
//  DrawXY
//
//  Created by mark on 2018/11/8.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"
#import "Quartz.h"

@interface ViewController (){
    Quartz *quartz;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    quartz = [[Quartz alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:quartz];
    [quartz setNeedsDisplay];
}


@end
