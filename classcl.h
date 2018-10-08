//
//  classcl.h
//  class2
//
//  Created by mark on 2018/10/8.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface classcl : NSObject
@property int numerator,denominator;
-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
-(void) add:(classcl *) f;
-(void) reduce;
@end

NS_ASSUME_NONNULL_END
