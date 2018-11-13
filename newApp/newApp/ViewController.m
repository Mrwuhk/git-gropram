//
//  ViewController.m
//  newApp
//
//  Created by mark on 2018/11/12.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "ViewController.h"
#import "topView.h"
#import "MKconstant.h"
#import "MiddleView.h"
#import "MyButton.h"
@interface ViewController (){
    topView *topview;
    MiddleView *middleView;
    UIView *searchView;
    UISearchBar *searchBar;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addtopview];
    [self addMiddleView];
   // [self addMyButton];
   // [self addSrearchView];
}

-(void)addSrearchView{
    UIButton *bt=[[UIButton alloc]initWithFrame:CGRectMake(UISCREEN_WIDTH-200, 145, 60, 80)];
    [bt setImage:[UIImage imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(searchAction) forControlEvents:UIControlEventTouchUpInside];
    [topview addSubview:bt];
    
}

-(void)searchAction{
    searchView=[[UIView alloc]initWithFrame:CGRectMake(0, 145, UISCREEN_WIDTH, UISCREEN_HEIGHT)];
    searchView.backgroundColor=[UIColor blueColor];
    searchBar=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 414, 50)];
    [searchView addSubview:searchBar];
    [self.view addSubview:searchView];
}




-(void)addMyButton{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 85, UISCREEN_WIDTH, 0)];
    view.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:view];
    MyButton *myButton=[[MyButton alloc]initWithFrame:CGRectMake(0, 0, 60, 80) image:@"1.jpg" title:@"yuheng"];
    [view addSubview:myButton];
}





-(void)addtopview{
    //topview=[[topView alloc]initWithFrame:CGRectMake(0, 20,UISCREEN_WIDTH, 60)];
    topview=[[topView alloc]initWithFrame:CGRectMake(0, 20, UISCREEN_WIDTH, 60)];
    [topview setTitle:@"h哼哼哈哈"];
    [self.view addSubview:topview];
}
-(void)addMiddleView{
    middleView=[[MiddleView alloc]initWithFrame:CGRectMake(0, 80, UISCREEN_WIDTH, 40+200+140) newType:@[@"IOS新闻",@"安卓新闻",@"IOS招聘",@"安卓招聘",@"IOS代码",@"安卓代码"]];
    [self.view addSubview:middleView];
    NSDictionary *newsinfo0=[NSDictionary dictionaryWithObjectsAndKeys:@"1.jpg",@"image",@"ios的那些神坑",@"info", nil];
    NSDictionary *newsinfo1=[NSDictionary dictionaryWithObjectsAndKeys:@"2.jpg",@"image",@"ios1的那些神坑",@"info", nil];
    NSDictionary *newsinfo2=[NSDictionary dictionaryWithObjectsAndKeys:@"3.jpg",@"image",@"ios2的那些神坑",@"info", nil];
    NSDictionary *newsinfo3=[NSDictionary dictionaryWithObjectsAndKeys:@"4.jpg",@"image",@"ios3的那些神坑",@"info", nil];
    NSArray *newsInfo=[[NSArray alloc]initWithObjects:newsinfo0,newsinfo1,newsinfo2,newsinfo3, nil];
    middleView.newsInfo=newsInfo;
    [middleView addNewsScrollView];
    //图文混排
    [middleView addMixImageText:CGRectMake(0, 245, UISCREEN_WIDTH, 60 ) image:@"4.jpg" title:@"2005年，搭档冯巩、李琦在北京与天津春晚上合作小品《自作聪明》，从此开始演艺事业 [1]  。2007年，在情景喜剧《低头不见抬头见》中饰演石榴 [2]  。2010年1月，在情景喜剧《乐活家庭》中饰演小萱 [3]  ；3月，又出演了续集《乐活家庭2》 [4]  。2011年，在情景喜剧《搞笑一家人》饰演徐雅慧 [5]  。2013年，出演都市家庭剧《儿女情更长》 [6]  。2014年，在都市情感剧《别叫我兄弟》中饰演叶晓晓 [7]  。2015年，主演古装探案喜剧《医馆笑传》 [8]  。2016年，主演了都市情感剧《亲爱的她们》 [9]  。2017年，主演都市情感剧《美好生活》" url:@"https://baike.baidu.com/item/%E5%A7%9C%E5%A6%8D/6500372?fr=aladdin"];
}


@end
