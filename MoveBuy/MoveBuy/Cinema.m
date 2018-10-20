//
//  Cinema.m
//  MoveBuy
//
//  Created by mark on 2018/10/20.
//  Copyright © 2018年 mark. All rights reserved.
//


//
//  Cinema.m
//  购票系统
//

#import "Cinema.h"
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])


//定义一个全局变量 保存编号
int selectNo;
#define ROW 7
#define COL 15
@implementation Cinema

-(instancetype)initWithCinemaName:(NSString *)name{
    if (self = [super init]) {
        
        _cinemaName = name;
        
        //给电影票的数组初始化
        for (int i = 0; i<5; i++) {
            MovieTicket *mvticket = [MovieTicket new];
            
            //给对象赋值
            mvticket.name = [NSString stringWithFormat:@"西游记之孙悟空三打白骨精",i+1];
            mvticket.duration = 120;
            mvticket.actor=@"郑保瑞";
            mvticket.director =@"郭富城";
            mvticket.no = i +1 ;
        
            mvticket.price = 30.f;
            mvticket.place = [NSString stringWithFormat:@"影厅%02d",i+1];;
            mvticket.startTime = [NSString stringWithFormat:@"1%d:00",i+1];
            
            //将对象存入到数组
            tickets[i] = mvticket;
            
        }
    }
    return self;
    
}
-(void)buyTicket{
    [self list];
}

//显示正在上映的电影票信息
-(void)list{
   // NSLog(@"显示正在上映的电影 ");
    
    for (int i = 0 ; i < 5; i++) {
        NSLog(@"\n\n电影编号:%d 电影名称:%@ 主演:%@ 开始时间:%@ 导演:%@ 时长:%d", tickets[i].no,tickets[i].name,tickets[i].actor,tickets[i].startTime,tickets[i].director,tickets[i].duration);
    }
    
    [self selectMovie];
    
}
//选择电影
-(void)selectMovie{
    NSLog(@"选择影片");
    //定义一个全局变量保存用户选择的影片信息
    printf("请选择要观看的一部影片:\n");
    int num ;
    scanf("%d",&num);
    if (num < 0 || num>5) {
        return    ;
    }
    selectNo = num ;
    NSLog(@"\n你已经选择了影片: %@",tickets[selectNo-1].name);
    
    [self selectRow];
}

//选择排数
-(void)selectRow{
    printf("**当前影厅共有%d排，每排有%d个座位**\n",ROW,COL);
    //打印座位信息
    for (int i = -1 ; i<ROW; i++) {
        for (int j = -1 ; j< COL;j ++) {
            if (i == -1 ) {
                NSLog(@"%02d ",j+1);
            }
            else if (j == -1 ) {
                NSLog(@"%02d ",i+1);
            }
            else{
                NSLog(@" + ");
            }
            
        }
        printf("\n");
    }
    NSLog(@"选择排数");
    int num1 ;
    scanf("%d",&num1);
    if (num1<0 || num1>7) {
        return ;
    }
    //保存排数
    tickets[selectNo-1].rowNum = num1;
    NSLog(@"您选择了%d",tickets[selectNo-1].rowNum);
    [self selectCol] ;
}

//选择列数
-(void)selectCol{
    
    NSLog(@"选择座位号");
    int num2 ;
    scanf("%d",&num2);
    if (num2<0 || num2>15) {
        return ;
    }
    //保存排数
    tickets[selectNo-1].colNum = num2;
    
    NSLog(@"\n\n你选择的影片是:%@  开始时间:%@ \n您的座位是第%d排,%d座位\n影厅:%@  票价:%f",tickets[selectNo-1].name,tickets[selectNo-1].startTime,tickets[selectNo-1].rowNum,tickets[selectNo-1].colNum,tickets[selectNo-1].place,tickets[selectNo-1].price);
    printf("请确认 1.确认 0.取消\n");
    int flag ;
    scanf("%d",&flag);
    if (flag<0 || flag>15) {
        return ;
    }
    [self pay];
}

//开始支付
-(void)pay{
    
    NSLog(@"支付电影票");
    [self printTicket];
}

//出票(打印票)
-(void)printTicket{
    NSLog(@"出票");
    NSLog(@"\n\n恭喜您 购票成功 ：\n购票信息如下：\n影片是:%@  开始时间:%@ \n您的座位是第%d排,%d座位\n影厅:%@  票价:%f",tickets[selectNo-1].name,tickets[selectNo-1].startTime,tickets[selectNo-1].rowNum,tickets[selectNo-1].colNum,tickets[selectNo-1].place,tickets[selectNo-1].price);
    
    
    for (int i = 0 ; i<= ROW; i++) {
        for (int j = 0 ; j<= COL; j++) {
            if (i == tickets[selectNo-1].rowNum
                && j == tickets[selectNo-1].colNum
            ) {
                NSLog(@" @ ");
            }
            else if (i == 0 ) {
                NSLog(@"%02d ",j);
            }
            
            else if (j == 0 ) {
                NSLog(@"%02d ",i);
            }
            else{
               NSLog(@" + ");
            }
            
            
        }
        NSLog(@"\n");
    }
    
    
    
}

@end


