//
//  main.m
//  jicheng
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface ClassA:NSObject
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void)initVar
{
    x=100;
}

@end

//Class的声明和定义
@interface ClassB : ClassA
-(void)printVar;
@end

@implementation ClassB
-(void)printVar
{
    NSLog(@"x=%i",x);
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        ClassB *b=[[ClassB alloc]init];
        [b initVar];//使用继承
        [b printVar];//显示x的值
    }
    return 0;
}
