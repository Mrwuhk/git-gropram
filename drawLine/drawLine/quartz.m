//
//  quartz.m
//  drawLine
//
//  Created by mark on 2018/11/5.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "quartz.h"

@implementation quartz

- (void)drawRect:(CGRect)rect {
    // Drawing code
//    [self drawMyLine];
//    [self drawMyRect];
//    [self drawMypath2];
//    [self drawMyArc];
//    [self drawMyArc1];
//    [self drawMyClicle2];
    [self drawMyProperty4];
 }
 -(void)drawMyLine{
 CGContextRef context=UIGraphicsGetCurrentContext();
 [COLOR1 setStroke];
     //[COLOR2 setStroke];
 //
 CGContextSetLineWidth(context, 10.0);
 CGContextMoveToPoint(context, 100, 100);
 CGContextAddLineToPoint(context, 300, 300);
 CGContextStrokePath(context);
 }
-(void)drawMyRect{
    CGContextRef context=UIGraphicsGetCurrentContext();

    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 5.0);
    CGContextAddRect(context, CGRectMake(200, 400, 100, 100));
    
    //CGContextStrokePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
}

-(void)drawMypath{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 2.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGPathMoveToPoint(pathRef, nil, 150, 550);
    CGPathAddLineToPoint(pathRef, nil, 200, 200);
    CGPathAddLineToPoint(pathRef, nil, 0, 650);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMypath2{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 12.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGPathMoveToPoint(pathRef, nil, 150, 550);
    CGPathAddLineToPoint(pathRef, nil, 200, 200);
    CGPathAddLineToPoint(pathRef, nil, 0, 650);
    CGPathAddLineToPoint(pathRef, nil, 150, 550);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMyArc{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 2.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGContextMoveToPoint(context, 100, 200);
    CGContextAddCurveToPoint(context, 200, 200, 200, 200, 400, 200);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMyArc1{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 2.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGContextMoveToPoint(context, 100, 200);
    CGContextAddCurveToPoint(context, 200, 100, 200, 300, 300, 200);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMyClicle{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 2.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGContextAddArc(context, 200, 400, 100, 0, M_PI*2, 1);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMyClicle2{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 2.0);
    //CGMutablePathRef pathRef=CGPathCreateMutable();
    CGContextAddArc(context, 200, 400, 100, 0, M_PI, 1);
    //CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);
}
-(void)drawMyProperty1{
    CGContextRef context=UIGraphicsGetCurrentContext();
    //[COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 12.0);
    //CGMutablePathRef pathRef=CGPathCreateMutable();
    //CGContextAddArc(context, 200, 400, 100, 0, M_PI, 1);
    //CGContextAddPath(context, pathRef);
    CGContextSetLineCap(context, kCGLineCapSquare);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 300, 400);
    CGContextStrokePath(context);
}
-(void)drawMyProperty2{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 5.0);
    CGMutablePathRef pathRef=CGPathCreateMutable();
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGPathMoveToPoint(pathRef, nil, 150, 550);
    CGPathAddLineToPoint(pathRef, nil, 200, 200);
    CGPathAddLineToPoint(pathRef, nil, 50, 650);
    CGPathAddLineToPoint(pathRef, nil, 150, 550);
    CGContextAddPath(context, pathRef);
    CGContextDrawPath(context, kCGPathFillStroke);

}
-(void)drawMyProperty3{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 10.0);
    CGFloat length[]={10,20,10};
    CGContextSetLineDash(context, 0, length, 3);
    CGContextMoveToPoint(context, 100, 0);
    CGContextAddLineToPoint(context, 100, 700);
    CGContextStrokePath(context);

}
-(void)drawMyProperty4{
    CGContextRef context=UIGraphicsGetCurrentContext();
    [COLOR1 setFill];
    [COLOR2 setStroke];
    CGContextSetLineWidth(context, 10.0);
    CGFloat length[]={1,2,3,3,2,1,3,1};
    CGContextSetLineDash(context, 0, length, 8);
    CGContextMoveToPoint(context, 100, 0);
    CGContextAddLineToPoint(context, 100, 700);
    CGContextStrokePath(context);
    
}

@end
