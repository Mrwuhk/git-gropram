//
//  main.m
//  9*9mulype
//
//  Created by mark on 2018/10/14.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to 9*9!");
        int i,j;
        int c = 0;
        for(i=1;i<10;++i)
        {
            for(j=1;j<=i;++j)
                
            {
                c=i*j;
                NSLog(@"%i*%i=%.2i",i,j,c);
            }
            NSLog(@" ");
            
        }
    }
    return 0;
}
