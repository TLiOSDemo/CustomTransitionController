//
//  Animator.m
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "Animator.h"

@implementation Animator
/**
 *  动画执行的时间
 *
 *  @param transitionContext 上下文
 *
 *  @return
 */
-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{

    UIViewController *toViewController=[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController=[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    [[transitionContext containerView] addSubview:toViewController.view];
    
    toViewController.view.alpha=0;
    
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromViewController.view.transform=CGAffineTransformMakeScale(0.1, 0.1);
        toViewController.view.alpha=1;
    } completion:^(BOOL finished) {
        
        fromViewController.view.transform=CGAffineTransformIdentity;
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
    
    
}
@end
