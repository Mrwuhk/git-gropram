//
//  person.m
//  Creact_method
//
//  Created by mark on 2018/10/15.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "Person.h"

@implementation Person : NSObject 
-(id)init{
    self=[super init];
    if(self){
        NSLog(@"This is creact method");
        self.age=18;
    }
    return self;
}


@end
