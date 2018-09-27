//
//  Fraction.m
//  Class
//
//  Created by mark on 2018/9/26.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "heng.h"

@implementation Fraction
//{
//    int numberator;
//    int denominator;
//}
@synthesize  numberator, denominator;
-(void)print
{
    NSLog(@"%i/%i",numberator,denominator);
}
//-(void)setNumberator:(int)n
//{
//    numberator=n;
//}
//-(void)setDenominator:(int)d
//{
//    denominator=d;
//}
//-(int)numberator
//{
//    return numberator;
//}
//-(int)denominator
//{
//    return denominator;
//}
-(double) converTonum
{
    if(denominator!=0)
        return (double)
        numberator/denominator;
    else
        return NAN;
}




@end
