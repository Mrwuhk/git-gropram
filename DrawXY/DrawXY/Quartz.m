//
//  Quartz.m
//  DrawXY
//
//  Created by mark on 2018/11/8.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Quartz.h"
#define COLOR1 [UIColor colorWithRed:1.0 green:0.5 blue:.31 alpha:1.0]
#define COLOR2 [UIColor colorWithRed:0.54 green:0.81 blue:0.31 alpha:1.0 ]


@implementation Quartz


- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawMyPie];
}
-(void)drawMyLine{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setStroke];
    CGContextSetLineWidth(context, 5);
    
    CGContextSaveGState(context);
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 1.0);
    [self drawXY:context];
    CGContextRestoreGState(context);
    
    
    CGContextMoveToPoint(context, 64, 149);
    CGContextAddLineToPoint(context, 123, 234);
    CGContextAddLineToPoint(context, 156,57);
    CGContextAddLineToPoint(context, 189, 321);
    CGContextAddLineToPoint(context, 230, 119);
    CGContextAddLineToPoint(context, 276, 156);
    CGContextAddLineToPoint(context, 322, 23);
    CGContextStrokePath(context);
}
-(void)drawXY:(CGContextRef)context{
    CGContextMoveToPoint(context, 50, 350);
    CGContextAddLineToPoint(context, 410, 350);
    CGContextAddLineToPoint(context, 400, 345);
    CGContextMoveToPoint(context, 410, 350  );
    CGContextAddLineToPoint(context, 400, 355);
    
    
    CGContextMoveToPoint(context, 50, 350);
    CGContextAddLineToPoint(context, 50, 20);
    CGContextAddLineToPoint(context, 45, 30);
    CGContextMoveToPoint(context, 50, 20  );
    CGContextAddLineToPoint(context, 55, 30);

    CGContextStrokePath(context);
}
-(void)drawMyPie{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setStroke];
    CGContextSetLineWidth(context, 5);

    CGContextMoveToPoint(context, 200, 200);
    CGContextSaveGState(context);
    CGContextAddArc(context, 200, 200, 150, 0, M_PI*2, 0);
    CGContextDrawPath(context, kCGPathStroke);
    CGContextRestoreGState(context);
    CGContextSaveGState(context);
    
    CGContextRestoreGState(context);


}

@end
