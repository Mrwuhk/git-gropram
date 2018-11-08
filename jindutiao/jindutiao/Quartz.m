//
//  Quartz.m
//  jindutiao
//
//  Created by mark on 2018/11/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Quartz.h"


@implementation Quartz
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.percent=0;
    }
    return self;

}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    if (self.percent!=0) {
        CGContextRef context=UIGraphicsGetCurrentContext();
        [COLOR1 setStroke];
        CGContextSetLineCap(context, kCGLineCapRound);
        CGContextSetLineWidth(context, 15.0);
        CGContextMoveToPoint(context, 25, 208);
        CGContextAddLineToPoint(context, 25+(self.percent/100.0)*(414-50), 208);
        CGContextStrokePath(context);
    }
    
}


@end
