//
//  PromptView.m
//  newApp
//
//  Created by mark on 2018/11/12.
//  Copyright © 2018年 mark. All rights reserved.
//

#import "PromptView.h"

@implementation PromptView

-(id)initWithFrame:(CGPoint)point message:(int)message{
    CGRect rect;
    NSString *labelsStr=nil;
    if (message<10) {
        rect=CGRectMake(point.x, point.y, 20, 20);
        labelsStr=[NSString stringWithFormat:@"%i",message];
    }else if (message<100) {
        rect=CGRectMake(point.x, point.y, 40, 20);
        labelsStr=[NSString stringWithFormat:@"%i",message];
    } else  {
        rect=CGRectMake(point.x, point.y, 50, 20);
        labelsStr=[NSString stringWithFormat:@"%@",@"99+"];
    }


    self=[super initWithFrame:rect];
    if (self) {
        self.textColor=[UIColor whiteColor];
        self.textAlignment=NSTextAlignmentCenter;
        self.backgroundColor=[UIColor redColor];
        self.text=labelsStr;
        self.layer.cornerRadius=10.0;
        self.layer.masksToBounds=true;
    }
    return self;
}
@end
