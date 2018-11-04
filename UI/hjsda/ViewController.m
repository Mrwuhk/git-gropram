//
//  ViewController.m
//  hjsda
//
//  Created by mark on 2018/11/4.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueview;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addLongPressGesture];
    [self addSwipeGesture];
}
-(void)addSwipeGesture{
    UISwipeGestureRecognizer* swipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeGesture:)];
    swipe.direction=UISwipeGestureRecognizerDirectionUp;
    [self.blueview addGestureRecognizer:swipe];
}
-(void)addLongPressGesture{
    UILongPressGestureRecognizer* longPressRecongnizer=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressGesture:)];
    [self.blueview addGestureRecognizer:longPressRecongnizer];
}
-(void)addTapGuesture{
    UITapGestureRecognizer* taprecongnizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapGesture:)];
    //taprecongnizer.numberOfTapsRequired=3;
    taprecongnizer.numberOfTouchesRequired=2;
    [self.blueview addGestureRecognizer:taprecongnizer];
}
-(void)tapGesture:(UITapGestureRecognizer*)sender{
    NSLog(@"我不想输");
}
-(void)longPressGesture:(UILongPressGestureRecognizer*)sender{
    if (sender.state==UIGestureRecognizerStateBegan) {
        NSLog(@"我可以找到好的工作");

    }else if (sender.state==UIGestureRecognizerStateEnded){
        NSLog(@"我可以找到更好的工作");
    }
}
-(void)swipeGesture:(UISwipeGestureRecognizer*)sender{
    NSLog(@"必须找到好工作");
}
@end
