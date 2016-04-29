//
//  NavigationControllerDelegate.m
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "NavigationControllerDelegate.h"
#import "Animator.h"

@interface NavigationControllerDelegate()
@property (nonatomic,strong)UINavigationController *navigationController;
@property (strong,nonatomic)Animator *animator;
/**
 *  交互协议
 */
@property (nonatomic,strong)UIPercentDrivenInteractiveTransition *interactiveTransition;

@end

@implementation NavigationControllerDelegate

-(instancetype)init{
    self=[super init];
    if(self){
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
        [self.navigationController.view addGestureRecognizer:panGesture];
        self.animator=[Animator new];
    }
    return self;
}

-(void)pan:(UIPanGestureRecognizer *)panGesture{
    UIView *view=self.navigationController.view;
    if(panGesture.state == UIGestureRecognizerStateBegan){
        CGPoint location = [panGesture locationInView:view];
        if(location.x > CGRectGetMidX(view.bounds)&& self.navigationController.viewControllers.count>1){
            self.interactiveTransition=[[UIPercentDrivenInteractiveTransition alloc]init];
            [self.navigationController pushViewController:self animated:YES];
            
        }
    }else if (panGesture.state == UIGestureRecognizerStateChanged){
        CGPoint translation = [panGesture translationInView:view];
        CGFloat d = fabs(translation.x / CGRectGetWidth(view.bounds));
        
        [self.interactiveTransition updateInteractiveTransition:d];
        
       
        
    }else if(panGesture.state==UIGestureRecognizerStateEnded){
        if([panGesture velocityInView:view].x<0){
            [self.interactiveTransition finishInteractiveTransition];
        }else{
            [self.interactiveTransition cancelInteractiveTransition];
        }
        
        self.interactiveTransition=nil;
    }
}

/**
 *  新API，支持在导航控制器之间返回一个动画控制器
 *
 *  @param navigationController 导航控制器
 *  @param operation            操作（pop或者push）
 *  @param fromVC               源控制器
 *  @param toVC                 目标控制器
 *
 *  @return 返回一个动画协议
 */
-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{

    if(operation == UINavigationControllerOperationPush){
        return self.animator;
    }
    
    return nil;
}

/**
 *  <#Description#>
 *
 *  @param navigationController 导航控制器
 *  @param animationController
 *
 *  @return 返回一个交互协议
 */
-(id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController{

    return self.interactiveTransition;
}











@end
