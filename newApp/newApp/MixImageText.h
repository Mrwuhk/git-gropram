//
//  MixImageText.h
//  newApp
//
//  Created by mark on 2018/11/13.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MixImageText : UIView
-(id)initWithFrame:(CGRect)frame;
-(void)setImage:(NSString*)image;
-(void)setUrlStr:(NSString*)urlStr;
-(void)setTitle:(NSString*)title;
@end

NS_ASSUME_NONNULL_END
