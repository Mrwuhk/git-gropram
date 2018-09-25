//
//  main.m
//  Calculator
//
//  Created by mark on 2018/9/22.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Calculator:NSObject
//累加方法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;


//算数方法
-(void) add: (double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator=value;
}

-(void) clear
{
    accumulator=0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add:(double) value
{
    accumulator+=value;
}

-(void) subtract:(double)value
{
    accumulator-=value;
}

-(void) multiply:(double)value
{
    accumulator*=value;
}

-(void) divide:(double)value
{
    accumulator/=value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *heng=[[Calculator alloc]init];
        
        [heng setAccumulator:100.0];
        [heng add:200.];
        [heng divide: 15.0];
        [heng subtract:10.0];
        [heng multiply:5];
        NSLog(@"The result is %g",[heng accumulator]);
        
    }
    return 0;
}
