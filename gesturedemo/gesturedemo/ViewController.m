//
//  ViewController.m
//  gesturedemo
//
//  Created by mark on 2018/11/5.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addPanGesture];
}

-(void) addPanGesture{
    UIPanGestureRecognizer* PLan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(PanGesture:)];
    
    [_blueView addGestureRecognizer:PLan];
}

-(void)PlanGesture:(UIPanGestureRecognizer*)sender{
    CGPoint point=[sender locationInView:_blueView];
    CGPoint speed=[sender velocityInView:_blueView];
    NSLog(@"point=%f %f,speed=%f  %f",point.x,point.y,speed.x,speed.y);
}



@end
