//
//  main.m
//  Switch
//
//  Created by mark on 2018/9/26.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction:NSObject
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;


-(void) add:(double)value;
-(void) subtract:(double)value;
-(void) multiply:(double)value;
-(void) divade:(double)value;

@end


@implementation Fraction
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
-(double)accumulator
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

-(void) divade:(double)value
{
    if (value!=0) {
        accumulator/=value;
    }
    else
        NSLog(@"Division by zero");
        accumulator=NAN;
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        double value1,value2;
        char operator;
        Fraction *heng=[[Fraction alloc]init];
        NSLog(@" Typein your experssion" );
        scanf("%lf %c %lf",&value1,&operator,&value2);
        [heng setAccumulator:value1];
        switch (operator) {
            case '+':
                [heng add:value2];
                break;
            case '-':
                [heng subtract:value2];
                break;
            case '*':
                [heng multiply:value2];
                break;
            case '/':
                [heng divade:value2];
                break;
                
            default:
                NSLog(@"Unknow operator");
                break;
        }
    }
    return 0;
}
