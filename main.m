//
//  main.m
//  Class
//
//  Created by mark on 2018/9/26.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Fraction *heng=[[Fraction alloc]init];
        // 设置分数为1/3
        [heng setNumerator:1];
        [heng setDenominator:3];
        //显示分数
        NSLog(@"The value of mu Fraction is:");
        [heng print];
        
    }
    return 0;
}
