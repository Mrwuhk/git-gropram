//
//  main.m
//  myrect
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Rectangle *heng=[[Rectangle alloc]init];
        [heng setWidth:5 andHeight:8];
        NSLog(@"Rectangle:w=%i,h=%i",heng.width,heng.height);
        NSLog(@"Area=%i,Perimeter=%i",[heng area],[heng perimeter]);
    }
    return 0;
}
