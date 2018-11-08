//
//  ViewController.m
//  UIBotton
//
//  Created by mark on 2018/10/25.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self button];
    [self button6];
    
}
-(void)button6{
    MyButton *button=[[MyButton alloc]initWithFrame:CGRectMake(100, 400, 300, 200)];
    button.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:button];
}
-(void)button{
//    UIButton *button=[UIButton buttonWithType:UIButtonTypeInfoLight];
    //button.frame=CGRectMake(100, 100, 300, 200);
     UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 300, 200)];
    [button setTitle:@"我是漂亮的哼哼" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.layer.borderWidth=5.0;
    button.layer.borderColor=[UIColor lightGrayColor].CGColor;
    button.layer.cornerRadius=10;
    button.layer.shadowColor=[UIColor blueColor].CGColor;
    button.layer.shadowOffset=CGSizeMake(15,15);
    button.layer.shadowOpacity=0.5;
    [button addTarget:self action:@selector(buttonAction:)
     forControlEvents:(UIControlEventTouchDown)
     ];
    button.backgroundColor=[UIColor blueColor];
    [button setBackgroundImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
}

-(void)buttonAction:(UIButton*)bt{
    NSLog(@"我爱吴厚崁");
}


@end
