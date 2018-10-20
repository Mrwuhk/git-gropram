//
//  main.m
//  MoveBuy
//
//  Created by mark on 2018/10/20.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cinema.h"
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])



void buyMovieTicket(){
    Cinema *cinema = [[Cinema alloc] initWithCinemaName:@"慕课电影院"];
    
    [cinema buyTicket];
    
}
void buyConcertTicket(){
    
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //打印欢迎信息
        NSLog(@"************欢迎光临慕课影院***************\n");
        
        //提示用户选择
        NSLog(@"****热播电影列表****\n");
        
                
        //开始购票
        
        buyMovieTicket();
        
        
        
        
        
    }
    return 0;
}
