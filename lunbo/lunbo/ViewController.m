//
//  ViewController.m
//  lunbo
//
//  Created by mark on 2018/11/10.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self scrollView];
    [self scrollView3];
}
-(void)scrollView3{
    UIScrollView *scrollview=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, 414, 200)];
    scrollview.contentSize=CGSizeMake(414*5, 200);
    scrollview.delegate=self;
    scrollview.pagingEnabled=true;
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    lable.backgroundColor=[UIColor redColor];
    lable.text=@"2";
    [scrollview addSubview:lable];
    scrollview.contentOffset=CGPointMake(414, 0);
    for (int i=0; i<4; ++i) {
        float labelX=(i+1)*414;
        UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(labelX, 0, 100, 100)];
        lable.backgroundColor=[UIColor redColor];
        lable.text=[NSString stringWithFormat:@"%i",i%3];
        [scrollview addSubview:lable];
    }
    [self.view addSubview: scrollview];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    float x=scrollView.contentOffset.x;
    if (x==414*4) {
        CGPoint point=CGPointMake(414, 0);
        scrollView.contentOffset=point;
    }else if (x==0){
        CGPoint point=CGPointMake(414*3, 0);
        scrollView.contentOffset=point;
    }
    
}
-(void)scrollView{
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, 414, 200)];
    scrollView.contentSize=CGSizeMake(414*5, 200);
    scrollView.backgroundColor=[UIColor grayColor];
    scrollView.indicatorStyle=UIScrollViewIndicatorStyleWhite;
    scrollView.bounces=true;
    [self.view addSubview:scrollView];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(414*3, 0, 414, 200)];
    label.text=@"我爱余珩";
    label.textColor=[UIColor blueColor];
    label.backgroundColor=[UIColor blackColor];
    label.font=[UIFont systemFontOfSize:18.0];
    
    [scrollView addSubview:label];
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 414, 200)];
    label1.text=@"我爱余珩1";
    label1.textColor=[UIColor blueColor];
    label1.backgroundColor=[UIColor blackColor];
    label1.font=[UIFont systemFontOfSize:18.0];
    
    [scrollView addSubview:label1];
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(414*4, 0, 414, 200)];
    label2.text=@"我爱余2";
    label2.textColor=[UIColor blueColor];
    label2.backgroundColor=[UIColor blackColor];
    label2.font=[UIFont systemFontOfSize:18.0];
    
    [scrollView addSubview:label2];
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(414*1, 0, 414, 200)];
    label3.text=@"我爱余珩3";
    label3.textColor=[UIColor blueColor];
    label3.backgroundColor=[UIColor blackColor];
    label3.font=[UIFont systemFontOfSize:18.0];
    
    [scrollView addSubview:label3];
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(414*2, 0, 414, 200)];
    label4.text=@"我爱余珩4";
    label4.textColor=[UIColor blueColor];
    label4.backgroundColor=[UIColor blackColor];
    label4.font=[UIFont systemFontOfSize:18.0];
    
    [scrollView addSubview:label4];
    
    
}
-(void)scrollView2{
    UIScrollView *scrollview=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 100, 414, 200)];
    scrollview.contentSize=CGSizeMake(1440, 1040);
    UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1440, 1040)];
    imageview.image=[UIImage imageNamed:@"1.jpg"];
    scrollview.backgroundColor=[UIColor grayColor];
    [scrollview addSubview:imageview];
    [self.view addSubview:scrollview];
    
}
@end
