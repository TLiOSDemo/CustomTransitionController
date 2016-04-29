//
//  Animator.h
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//实现一个动画协议
/**
 *  该动画协议有两个方法
 1.执行的时间
 2.具体的动画执行
 */
@interface Animator : NSObject<UIViewControllerAnimatedTransitioning>

@end
