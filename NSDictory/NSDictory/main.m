//
//  main.m
//  NSDictory
//
//  Created by mark on 2018/10/18.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        NSDictionary *dic=[[NSDictionary alloc]initWithObjectsAndKeys:@"1.5",@"apple",@"1314520",@"yuheng", nil];
        //通过key查找value
        NSString *str1=[dic valueForKey:@"yuheng"];
        NSLog(@"%@",str1);
        //查找所有的key和所有的value
        NSArray *arry=[dic allKeys];
        NSArray *arry1=[dic allValues];
        NSLog(@"%@",arry);
        NSLog(@"%@",arry1);
    }
    return 0;
}
