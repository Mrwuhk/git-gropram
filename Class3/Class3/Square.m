//
//  Square.m
//  Class3
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Square.h"

@implementation Square:Rectangle
-(void)setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return self.width;
}

@end
