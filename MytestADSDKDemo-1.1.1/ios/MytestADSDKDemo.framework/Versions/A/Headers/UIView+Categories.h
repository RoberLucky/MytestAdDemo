//
//  UIView+Categories.h
//  CallPlus
//
//  Created by upon on 2019/3/28.
//  Copyright © 2019 LiuShuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Categories)

- (void)startShakeAnimation;
- (void)startFlashAnimationWithGradientLayer:(CAGradientLayer *)gradientLayer;

- (CAGradientLayer *)addGradientLayerWithColors:(NSArray <UIColor *> *)colors beginPoint:(CGPoint)beginPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations size:(CGSize)size;

- (void)setCustomCornerRect:(UIRectCorner)corners radius:(CGFloat)cornerRadius;

- (UIViewController *)viewController;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat xnMaxX; /**< UIView最大的x*/
@property (nonatomic, assign) CGFloat xnMaxY; /**< UIView最大的y*/
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

@end
