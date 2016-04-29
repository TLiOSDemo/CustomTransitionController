//
//  GPUImageAnimator.h
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/29.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animator.h"


@interface GPUImageAnimator : NSObject<UIViewControllerAnimatedTransitioning,UIViewControllerInteractiveTransitioning>


@property (nonatomic) BOOL interActive;
@property (nonatomic) CGFloat progress;

/**
 *  完成交互
 */
- (void)finishInteractiveTransition;
/**
 *  取消交互
 */
- (void)cancelInteractiveTransition;
@end
