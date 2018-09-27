//
//  main.m
//  Class
//
//  Created by mark on 2018/9/26.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "heng.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        NSLog(@"合成存取方法");
        
        Fraction *heng=[[Fraction alloc]init];
//        [heng setNumberator:1];
//        [heng setDenominator:3];
        // 设置分数为1/3
                [heng setNumberator:1];
                [heng setDenominator:3];
        //显示分数
        NSLog(@"The value of mu Fraction is:");
        [heng print];
        
    }
    return 0;
}
