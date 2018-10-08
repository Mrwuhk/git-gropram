//
//  Rectangle.h
//  myrect
//
//  Created by mark on 2018/10/9.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject
@property int width,height;
-(int)area;
-(int)perimeter;
-(void)setWidth:(int)w andHeight:(int)h;

@end

NS_ASSUME_NONNULL_END
