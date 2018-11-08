//
//  ViewController.m
//  jindutiao
//
//  Created by mark on 2018/11/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"
#import "Quartz.h"

@interface ViewController (){
    Quartz *quartzBView;
    int i;
    UILabel *lab;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(20, 200, 414-40, 14)];
    view.backgroundColor=COLOR2;
    view.layer.cornerRadius=7.0;
    [self.view addSubview:view];
    self.view.backgroundColor=[UIColor blackColor];
    lab=[[UILabel alloc]initWithFrame:CGRectMake(414-120, 170, 100, 20)];
    lab.text=@"0.0%";
    lab.textColor=[UIColor blueColor];
    lab.textAlignment=NSTextAlignmentRight;
    [self.view addSubview:lab];
    // Do any additional setup after loading the view, typically from a nib.
    quartzBView=[[Quartz alloc]initWithFrame:self.view.bounds];
    quartzBView.backgroundColor=[UIColor clearColor];
    [self.view addSubview:quartzBView];
    i=0;
    NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(loadRefush) userInfo:nil repeats:true];

}
-(void)loadRefush{
    if (i<100) {
        i++;
    }else{
        i=100;
    }
    quartzBView.percent=i;
    [quartzBView setNeedsDisplay];
    lab.text=[NSString stringWithFormat:@"%i%@",i,@"%"];
}

@end
