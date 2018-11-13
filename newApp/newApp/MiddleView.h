//
//  MiddleView.h
//  newApp
//
//  Created by mark on 2018/11/12.
//  Copyright © 2018年 mark. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MiddleView : UIView
@property(nonatomic,strong)NSArray *newsInfo;
-(void)addNewsScrollView;
-(id)initWithFrame:(CGRect)frame newType:(NSArray*)type;
-(void)addMixImageText:(CGRect)frame image:(NSString*)image title:(NSString*)title url:(NSString*)url;
//-(void)addScrollView;
@end

NS_ASSUME_NONNULL_END
