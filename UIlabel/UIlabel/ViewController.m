//
//  ViewController.m
//  UIlabel
//
//  Created by mark on 2018/10/23.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 60, 100, 50)];
    label.backgroundColor=[UIColor blackColor];
    label.text=@"hello world";
    label.textColor=[UIColor blueColor];
    [self.view addSubview:label];
    
    //字体添加
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(20, 120, 100, 50)];
    label1.backgroundColor=[UIColor lightGrayColor];
    label1.text=@"hello world";
    label1.textColor=[UIColor blueColor];
    label1.font=[UIFont systemFontOfSize:12.0];
    [self.view addSubview:label1];
    
    //更改字体
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(20, 180, 100, 50)];
    label2.backgroundColor=[UIColor orangeColor];
    label2.text=@"these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor";
    label2.textColor=[UIColor blueColor];
    //全部输出，但是效果不佳
    //label2.adjustsFontSizeToFitWidth=true;
    //label2.numberOfLines=2;
    label2.font=[UIFont fontWithName:@"Aril-BoldMT" size:15];
    label2.lineBreakMode=NSLineBreakByTruncatingMiddle;
    [self.view addSubview:label2];
    
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(20, 240,  300, 100)];
    label3.backgroundColor=[UIColor orangeColor];
    label3.text=@"these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor";
    label3.textColor=[UIColor blueColor];
    //全部输出，但是效果不佳
    //label2.adjustsFontSizeToFitWidth=true;
    
    label3.font=[UIFont fontWithName:@"Aril-BoldMT" size:12];
    label3.numberOfLines=0;

    label3.lineBreakMode=NSLineBreakByTruncatingMiddle;
    [self.view addSubview:label3];
    
    
    
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(20, 360, 100, 50)];
    label4.backgroundColor=[UIColor redColor];
    label4.text=@"hello world";
    label4.textColor=[UIColor blueColor];
    label4.layer.shadowColor=[UIColor greenColor].CGColor;
    label4.layer.shadowOffset=CGSizeMake(5, 5);
    label4.layer.shadowOpacity=0.5;
    label4.shadowColor=[UIColor blackColor];
    label4.shadowOffset=CGSizeMake(2, 2);
    [self.view addSubview:label4];

    //自适应
    UIFont *font=[UIFont systemFontOfSize:16.0];
    NSString *str=@"hello";
    CGSize labelWH=[str sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName ,nil]];
    UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(20, 460, labelWH.width, labelWH.height)];
    label5.backgroundColor=[UIColor yellowColor];
    label5.text=str;
    label5.textColor=[UIColor blueColor];
    label5.font=[UIFont systemFontOfSize:16.0];

    [self.view addSubview:label5];
    



}
@end
