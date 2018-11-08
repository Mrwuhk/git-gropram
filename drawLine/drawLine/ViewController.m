//
//  ViewController.m
//  drawLine
//
//  Created by mark on 2018/11/5.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"
#import "quartz.h"

@interface ViewController (){
    quartz *quartz2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    quartz2=[[quartz alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:quartz2];
    [quartz2 setNeedsDisplay];
}


@end
