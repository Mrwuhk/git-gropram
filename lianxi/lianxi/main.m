//
//  main.m
//  lianxi
//
//  Created by mark on 2018/10/16.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        NSString *str1=@"dgjasFghasF,gjdsagj。fjshSHJDHJSHJAhdsjhdj";
        NSString *str2=@"Fghas";
//        NSLog(@"%@",[str1 lowercaseString]);
//        NSLog(@"%@",[str1 uppercaseString]);
//        NSLog(@"%@",[str1 capitalizedString]);
        NSRange range;
        range=[str1 rangeOfString:str2];
        NSLog(@"%lu %lu",(unsigned long)range.length,(unsigned long)range.location);
        range.length=3;
        range.location=6;
        NSString *str3=[str1 substringWithRange:range];
        NSLog(@"%@",str3);
        NSString *str4=[str1 stringByAppendingString:@"草泥马"];
        NSString *str5=[str4 stringByAppendingFormat:@"5321"];
        NSLog(@"str4=%@,str5=%@",str4,str5);
    }
    return 0;
}
