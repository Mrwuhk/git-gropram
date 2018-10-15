//
//  main.m
//  Creact_method
//
//  Created by mark on 2018/10/15.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Person *heng=[[Person alloc]init];
//        [heng age];
        NSLog(@"age=%d",heng.age);
    }
    return 0;
}
