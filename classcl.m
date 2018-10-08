//
//  classcl.m
//  class2
//
//  Created by mark on 2018/10/8.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "classcl.h"

@implementation classcl
@synthesize numerator,denominator;
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(double) convertToNum
{
    if (denominator!=0) {
        return (double)numerator/denominator;
    }else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    numerator=n;
    denominator=d;
}

-(void) add:(classcl *)f
{
    // a/b+c/d=(a*d+c*b)/b*d
    numerator=numerator*f.denominator+denominator*f.numerator;
    denominator=denominator*f.denominator;
}

-(void)reduce
{
    int u=numerator;
    int v=denominator;
    int temp;
    while(v!=0)
    {
        temp=u%v;
        u=v;
        v=temp;
    }
    numerator/=u;
    denominator/=u;
}

@end
