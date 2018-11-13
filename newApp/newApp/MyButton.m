

#import "MyButton.h"

@implementation MyButton

-(id)initWithFrame:(CGRect)frame image:(NSString*)image title:(NSString*)title{
    self=[super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        self.titleLabel.textAlignment=NSTextAlignmentCenter;
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
    return self;
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat w=contentRect.size.width;
    CGFloat h=w;
    CGFloat x=0;
    CGFloat y=0;
    return CGRectMake(x, y, w, h);
}
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat w=contentRect.size.width;
    CGFloat h=contentRect.size.height-contentRect.size.width;
    CGFloat x=0;
    CGFloat y=contentRect.size.width;
    return CGRectMake(x, y, w, h);
}
@end
