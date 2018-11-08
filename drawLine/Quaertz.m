//
//  Quaertz.m
//  drawLine
//
//  Created by mark on 2018/11/5.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Quaertz.h"

@implementation Quaertz


- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawMyLine];
}
-(void)drawMyLine{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 10.0);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 300, 300);
    CGContextStrokePath(context);
}
@end
