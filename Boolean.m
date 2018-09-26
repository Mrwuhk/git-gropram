//
//  main.m
//  Boolean
//
//  Created by mark on 2018/9/26.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        int p,d,isPrime;
        //scanf("%i",&d)
        for(p=2;p<50;++p)
        {
            isPrime=1;
            for(d=2;d<p;++d)
            {
                if(p%d==0)
                {
                    isPrime=0;
                }
            }
            if(isPrime!=0){
                NSLog(@"%i",p);
            }
        }
    }
    return 0;
}
