//
//  Ticket.h
//  MoveBuy
//
//  Created by mark on 2018/10/20.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Common.h"
NS_ASSUME_NONNULL_BEGIN

@interface Ticket : Common

//座位号
@property int colNum;
//排数
@property int rowNum;
//地点
@property NSString *place;
//开始时间
@property NSString *startTime;
//结束时间
@property NSString *endTime;


-(void)printTicketInfo;

@end

NS_ASSUME_NONNULL_END
