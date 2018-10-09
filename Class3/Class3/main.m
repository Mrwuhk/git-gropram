//
//  main.m
//  Class3
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//
#import "Square.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Square *heng=[[Square alloc]init];
        
        [heng setSide:5];
        
        NSLog(@"Square=%i",[heng side]);
        NSLog(@"Area=%i,Perimeter=%i",[heng area],[heng perimeter]);
        
        
    }
    return 0;
}
