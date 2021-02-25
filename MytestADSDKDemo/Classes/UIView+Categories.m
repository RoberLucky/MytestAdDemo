//
//  UIView+JCategories.m
//  CallPlus
//
//  Created by upon on 2019/3/28.
//  Copyright © 2019 LiuShuo. All rights reserved.
//

#import "UIView+Categories.h"

@implementation UIView (Categories)

- (void)startShakeAnimation {
    CAKeyframeAnimation *shakeAnim = [CAKeyframeAnimation animation];
    shakeAnim.keyPath = @"transform.translation.x";
    shakeAnim.duration = 0.25;
    CGFloat delta = 10;
    shakeAnim.values = @[@0 , @(-delta), @(delta), @0];
    shakeAnim.repeatCount = 4;
    [self.layer addAnimation:shakeAnim forKey:@"shakeAnim"];
}

- (void)startFlashAnimationWithGradientLayer:(CAGradientLayer *)gradientLayer {
    // -----------------闪亮动画--------------------------------------------
    CGFloat MIGradientLayerWidth = 15;
    CAKeyframeAnimation *anim = [CAKeyframeAnimation animation];
    anim.duration = 3;
    anim.keyPath = @"transform.translation.x";
    anim.values = @[@(-150), @(self.bounds.size.width + MIGradientLayerWidth + 450)];
    anim.repeatCount = MAXFLOAT;
    [gradientLayer addAnimation:anim forKey:@"anim"];
}

- (CAGradientLayer *)addGradientLayerWithColors:(NSArray <UIColor *> *)colors beginPoint:(CGPoint)beginPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations size:(CGSize)size {
    
    CAGradientLayer *layer = [CAGradientLayer new];
    NSMutableArray *cgColors = [NSMutableArray array];
    for (UIColor *c in colors) {
        [cgColors addObject:(__bridge id)c.CGColor];
    }
    layer.colors = cgColors;
    layer.startPoint = beginPoint;
    layer.endPoint = endPoint;
    layer.locations = locations;
    layer.frame = CGRectMake(0, 0, size.width, size.height);
    [self.layer insertSublayer:layer atIndex:0];
    
    return layer;
}

- (void)setCustomCornerRect:(UIRectCorner)corners radius:(CGFloat)cornerRadius {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (UIViewController *)viewController {
    UIResponder *responder = self;
    while ((responder = [responder nextResponder]))
        if ([responder isKindOfClass:[UIViewController class]])
            return (UIViewController *)responder;
    
    return nil;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setXnMaxX:(CGFloat)xnMaxX {
    self.x = xnMaxX - self.width;
}

- (CGFloat)xnMaxX {
    return CGRectGetMaxX(self.frame);
}

- (void)setXnMaxY:(CGFloat)xnMaxY {
    self.y = xnMaxY - self.height;
}

- (CGFloat)xnMaxY {
    return CGRectGetMaxY(self.frame);
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

@end
