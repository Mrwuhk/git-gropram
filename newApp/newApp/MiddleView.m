//
//  MiddleView.m
//  newApp
//
//  Created by mark on 2018/11/12.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "MiddleView.h"
#import "MKconstant.h"
#import "PromptView.h"
#import "MaskView.h"
#import "MixImageText.h"
@interface MiddleView()<UIScrollViewDelegate>{
    NSArray *types;
    UIScrollView *scrollview;
    UIScrollView *newsScrollView;
    NSMutableArray *arryInfo;
    MaskView *maskView;

}
@end

@implementation MiddleView

-(id)initWithFrame:(CGRect)frame newType:(NSArray*)type{
    self=[super initWithFrame:frame];
    if (self) {
        types=type;
        [self addScrollView];
    }
    return self;
}
-(void)addMixImageText:(CGRect)frame image:(NSString*)image title:(NSString*)title url:(NSString*)url{
    MixImageText *mixImageText=[[MixImageText alloc]initWithFrame:frame];
    [self addSubview:mixImageText];
    [mixImageText setImage:image];
    [mixImageText setTitle:title];
    [mixImageText setUrlStr:url];
}
-(void)addNewsScrollView{
            newsScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 40, 414, 200)];
        newsScrollView.contentSize=CGSizeMake(414*4, 200);
        newsScrollView.contentOffset=CGPointMake(0, 0);
        newsScrollView.showsHorizontalScrollIndicator=false;
        newsScrollView.pagingEnabled=true;
        newsScrollView.delegate=self;
    int i=0;
    arryInfo=[[NSMutableArray alloc]init];
    for (NSDictionary *item in _newsInfo) {
        NSString *image=[item valueForKey:@"image"];
        NSString *info=[item valueForKey:@"info"];
        [arryInfo addObject:info];
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(414*i++, 0, 414, 200)];
        imageView.image=[UIImage imageNamed:image];
        imageView.contentMode=UIViewContentModeScaleAspectFit;
        [newsScrollView addSubview:imageView];
    }
    [self addSubview:newsScrollView];
    maskView=[[MaskView alloc]initWithFrame:CGRectMake(0, 240-20, 414, 20)];
    [self addSubview:maskView];
    NSString *title=[arryInfo objectAtIndex:0];
    [maskView setPageControlNum:0];
    
    [maskView setTitle:title];
    
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int currentPageNum=(int)scrollView.contentOffset.x/414;
    NSString *title=[arryInfo objectAtIndex:currentPageNum];
    [maskView setTitle:title];
    [maskView setPageControlNum:currentPageNum];
}
-(void)addScrollView{
    scrollview=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 40)];
    scrollview.contentSize=CGSizeMake(100*types.count, 40);
    scrollview.backgroundColor=PINK;
    scrollview.showsHorizontalScrollIndicator=false;
    [self addSubview:scrollview];
    for (int i=0; i<types.count; ++i) {
        UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(i*100, 0, 100, 40)];
        NSString *buttonTitle=[types objectAtIndex:i];
        [button setTitle:buttonTitle forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        button.tag=10000+i;
        [scrollview addSubview:button];
        if (i==0) {
            button.layer.borderColor=[UIColor cyanColor].CGColor;
            button.layer.borderWidth=2.0;
            button.layer.cornerRadius=5.0;
            PromptView *promptView=[[PromptView alloc]initWithFrame:CGPointMake(button.frame.size.width-20, 0) message:5];
            [button addSubview:promptView];

        }
        if (i==1){
            PromptView *promptView=[[PromptView alloc]initWithFrame:CGPointMake(button.frame.size.width-40, 0) message:22];
            [button addSubview:promptView];
        }
        if (i==2){
            PromptView *promptView=[[PromptView alloc]initWithFrame:CGPointMake(button.frame.size.width-40, 0) message:99];
            [button addSubview:promptView];

        }
        if (i==4){
            PromptView *promptView=[[PromptView alloc]initWithFrame:CGPointMake(button.frame.size.width-40, 0) message:999];
            [button addSubview:promptView];
            
        }

    }
}
-(void)buttonAction:(UIButton*)bt{
    bt.layer.borderColor=[UIColor cyanColor].CGColor;
    bt.layer.borderWidth=2.0;
    bt.layer.cornerRadius=5.0;
    for (UIButton *item in scrollview.subviews) {
        if(item.tag>=10000&&item.tag<=10000+types.count&&(item.tag!=bt.tag)){
            item.layer.borderWidth=0;
        }
    }

}
@end
