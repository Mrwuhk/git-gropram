//
//  main.m
//  select1
//
//  Created by mark on 2018/9/24.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

-(void) add:(double)value;
-(void) subtract:(double)value;
-(void) multiply:(double)value;
-(void) divide:(double) value;

@end

@implementation Fraction
{
    double accumulator;
}

-(void)setAccumulator:(double)value
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



-(void) add:(double)value
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
    if(value!=0)
        accumulator/=value;
    else
    {
        NSLog(@"Division by zero");
        accumulator=NAN;
    }
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        double value1,value2;
        char operator;
        Fraction *heng=[[Fraction alloc]init];
        NSLog(@"Type in your expression");
        scanf("%lf %c %lf",&value1,&operator,&value2);
        [heng setAccumulator:value1];
        if(operator=='+')
        {
            [heng add:value2];
        }
        else if(operator=='-')
        {
            [heng subtract:value2];
        }
        else if (operator=='*')
        {
            [heng multiply:value2];
        }
        else if (operator=='/')
        {
                [heng divide:value2];
        }
        else
        {
            NSLog(@"Unkonw operator");
        }
        
        NSLog(@"%.2lf",[heng accumulator]);
    }
    return 0;
}
