//
//  Cinema.h
//  MoveBuy
//
//  Created by mark on 2018/10/20.
//  Copyright © 2018年 mark. All rights reserved.
//


//
//  Cinema.h
//  购票系统
//
#import <Foundation/Foundation.h>
#import "MovieTicket.h"
@interface Cinema : NSObject
{
    //dianyingyaun的名字不需要getset犯法
    NSString *_cinemaName ;//初始化一下就好了
    //票的集合
    MovieTicket *tickets[5];
}
-(instancetype)initWithCinemaName:(NSString *)name;
//开始购票
-(void)buyTicket;
//显示正在上映的电影票信息
-(void)list;
//选择电影
-(void)selectMovie;
//选择排数
-(void)selectRow;
//选择列数
-(void)selectCol;
//开始支付
-(void)pay;
//出票(打印票)
-(void)printTicket;
@end

