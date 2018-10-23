//
//  ViewController.m
//  HelloUI
//
//  Created by mark on 2018/10/21.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
////    self.view.backgroundColor=[UIColor redColor];
////    CGFloat w=[UIScreen mainScreen].bounds.size.width;
////    CGFloat h=[UIScreen mainScreen].bounds.size.height;
////    NSLog(@"w=%f,h=%f",w,h);
//    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(100, 200, 414-100-10, 100)];
//    view1.backgroundColor=[UIColor redColor];
//    [self.view addSubview:view1];
////    CGFloat x=view.frame.origin.x;
////    CGFloat y=view.frame.origin.y;
////    NSLog(@"x=%f,y=%f",x,y);
////
//    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(100, 200, 414-100-10, 100)];
//    view2.backgroundColor=[UIColor greenColor];
//    [self.view addSubview:view2];
//    [self.view exchangeSubviewAtIndex:2 withSubviewAtIndex:3];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 414-100-10, 50)];
    view1.backgroundColor = [UIColor redColor];
    //  视图添加方法：addSubview 参数：view
    [self.view addSubview:view1];
    /*
     CGFloat x = view.frame.origin.x;
     CGFloat y = view.frame.origin.y;
     NSLog(@"x=%f y=%f",x,y);
     NSLog(@"size%@",NSStringFromCGSize(view.frame.size));
     NSLog(@"bounds%@",NSStringFromCGRect(view.bounds));
     NSLog(@"bounds%@",NSStringFromCGRect(self.view.bounds));// 414
     */
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 414-100-10, 50)];
    view2.backgroundColor = [UIColor greenColor];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(105, 100, 414-100-10, 50)];
    view3.backgroundColor = [UIColor blueColor];

    //  视图添加方法：addSubview 参数：view
    [self.view addSubview:view2];
     [self.view addSubview:view3];
     // exchangeSubviewAtIndex 参数1 参数2
    //[self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    //[self.view insertSubview:view2 atIndex:0];
    view1.tag=1;
    view2.tag=2;
    view3.tag=3;
    NSArray *subViewArray=self.view.subviews;
    for (UIView *view in subViewArray) {
        if (view1.tag==1) {
            view1.backgroundColor=[UIColor grayColor];
        }
        if (view2.tag==2) {
            view2.frame=CGRectMake(200, 200, 414-100-10, 50);
        }
        if (view3.tag==3) {
            [view3 removeFromSuperview];
        }
    }
}
@end
