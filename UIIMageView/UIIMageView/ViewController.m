//
//  ViewController.m
//  UIIMageView
//
//  Created by mark on 2018/10/24.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    UIImage *image=[UIImage imageNamed:@"520.jpg"];
    UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(20, 100, 300, 200)];
    imageview.image=image;
    [self.view addSubview:imageview];
    
    
    UIImage *image1=[UIImage imageNamed:@"520.jpg"];
    UIImageView *imageview1=[[UIImageView alloc]initWithFrame:CGRectMake(20, 400, 300, 200)];
    imageview1.image=image1;
    //imageview1.layer.borderWidth=2.0;
    imageview1.layer.borderColor=[UIColor redColor].CGColor;
    imageview1.contentMode=UIViewContentModeScaleAspectFit;
    imageview1.layer.borderWidth=2.0;
    [self.view addSubview:imageview1];

    UIImage *image1=[UIImage imageNamed:@"520.jpg"];
    UIImageView *imageview1=[[UIImageView alloc]initWithFrame:CGRectMake(20, 400, 300, 200)];
    imageview1.image=image1;
    //imageview1.layer.borderWidth=2.0;
    imageview1.layer.borderColor=[UIColor redColor].CGColor;
    imageview1.contentMode=UIViewContentModeScaleAspectFit;
    imageview1.layer.borderWidth=2.0;
    //imageview1.transform=CGAffineTransformMakeRotation(M_1_PI);
    imageview1.transform=CGAffineTransformMakeScale(0.5,2.5);
    [self.view addSubview:imageview1];
     
     */
    
    NSMutableArray *imageArray=[[NSMutableArray alloc]init];
    for (int i=0; i<4; i++) {
        NSString *imageName=[NSString stringWithFormat:@"%i.jpg",i];
        UIImage *image=[UIImage imageNamed:imageName];
        [imageArray addObject:image];
    }
    UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(100, 200, 200, 300)];
    imageview.animationDuration=[imageArray count];
    imageview.animationImages=imageArray;
   // imageview.animationRepeatCount=2;
    imageview.layer.shadowColor=[UIColor blueColor].CGColor;
    imageview.layer.shadowOffset=CGSizeMake(5, 5);
    imageview.layer.shadowOpacity=0.5;
    imageview.alpha=0.7;
    [self.view addSubview:imageview];
    [imageview startAnimating];
    

}


@end
