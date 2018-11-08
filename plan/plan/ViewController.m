//
//  ViewController.m
//  plan
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
    [self addScreemEdgePanGesture];
    [self addPinchGesture];
}
-(void) addPanGesture{
    UIPanGestureRecognizer* PLan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(PlanGesture:)];
    
    [_blueView addGestureRecognizer:PLan];
}

-(void)PlanGesture:(UIPanGestureRecognizer*)sender{
    CGPoint point=[sender locationInView:_blueView];
    CGPoint speed=[sender velocityInView:_blueView];
    NSLog(@"point=%f %f,speed=%f  %f",point.x,point.y,speed.x,speed.y);
}
-(void)addScreemEdgePanGesture{
    UIScreenEdgePanGestureRecognizer *screenEdePanGes=[[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(screenEdgePanGesture:)];
    screenEdePanGes.edges=UIRectEdgeRight;
    [self.view addGestureRecognizer:screenEdePanGes];
}
-(void)screenEdgePanGesture:(UIScreenEdgePanGestureRecognizer*)sender{
    if (sender.state==UIGestureRecognizerStateBegan) {
        NSLog(@"屏幕边缘华东区触发开始");
    }else if (sender.state==UIGestureRecognizerStateEnded){
        NSLog(@"触发结束");
    }
}
-(void)addPinchGesture{
    UIPinchGestureRecognizer *Pinch=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchGesture:)];
    [_blueView addGestureRecognizer:Pinch];
}
-(void)pinchGesture:(UIPinchGestureRecognizer*)sender{
    CGFloat scale=sender.scale;
    NSLog(@"scale=%f",scale);
}

@end
