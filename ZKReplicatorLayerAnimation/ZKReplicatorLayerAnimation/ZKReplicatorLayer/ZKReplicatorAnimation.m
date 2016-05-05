//
//  ZKReplicatorAnimation.m
//  ZKReplicatorLayerAnimation
//
//  Created by ZK on 16/5/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "ZKReplicatorAnimation.h"

@implementation ZKReplicatorAnimation

#pragma mark *** 基本动画简单封装 ***
+ (CABasicAnimation *)alphaAnimation
{
    CABasicAnimation *alphaAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    alphaAnimation.fromValue = @(1.f);
    alphaAnimation.toValue = @(.2f);

    return alphaAnimation;
}

+ (CABasicAnimation *)scaleAnimationZoom
{
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    CATransform3D fromTransform = CATransform3DScale(CATransform3DIdentity, 0.f, 0.f, 0.f);
    CATransform3D toTransform = CATransform3DScale(CATransform3DIdentity, 1.f, 1.f, 0.f);
    scaleAnimation.fromValue = [NSValue valueWithCATransform3D:fromTransform];
    scaleAnimation.toValue = [NSValue valueWithCATransform3D:toTransform];
    
    return scaleAnimation;
}

+ (CABasicAnimation *)scaleAnimationShrink
{
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    CATransform3D fromTransform = CATransform3DScale(CATransform3DIdentity, 1.f, 1.f, 0.f);
    CATransform3D toTransform = CATransform3DScale(CATransform3DIdentity, .2f, .2f, 0.f);
    scaleAnimation.fromValue = [NSValue valueWithCATransform3D:fromTransform];
    scaleAnimation.toValue = [NSValue valueWithCATransform3D:toTransform];
    
    scaleAnimation.autoreverses = YES;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = .6;
    
    return scaleAnimation;
}

+ (CABasicAnimation *)rotationAnimation:(CGFloat)transX
{
    CABasicAnimation *transformAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    CATransform3D fromValue = CATransform3DRotate(CATransform3DIdentity, 0.f, 0.f, 0.f, 0.f);
    CATransform3D toValue = CATransform3DRotate(CATransform3DIdentity, 0.f, 0.f, 0.f, 0.f);
    transformAnimation.fromValue = [NSValue valueWithCATransform3D:fromValue];
    transformAnimation.toValue = [NSValue valueWithCATransform3D:toValue];
    
    transformAnimation.autoreverses = YES;
    transformAnimation.repeatCount = MAXFLOAT;
    transformAnimation.duration = 0.8;

    transformAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return transformAnimation;
}

@end
