//
//  Rectangle.m
//  myrect
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,height;
-(void)setWidth:(int)w andHeight:(int)h
{
    width=w;
    height=h;
}
-(int)area
{
    return width*height;
}

-(int)perimeter
{
    return (width+height)*2;
}
@end
