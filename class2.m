//
//  main.m
//  class2
//
//  Created by mark on 2018/10/8.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "classcl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        classcl *heng1=[[classcl alloc]init];
        classcl *heng2=[[classcl alloc]init];
        
        [heng1 setTo:1 over:3];
        [heng2 setTo:2 over:30];
        
        [heng1 print];NSLog(@"+");[heng2 print];NSLog(@"=");
        [heng1 add:heng2];
        
        //  化简相加的值并打印结果
        [heng1 reduce];
        [heng1 print];
        
        
    }
    return 0;
}
