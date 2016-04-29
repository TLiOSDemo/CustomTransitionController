//
//  NavigationControllerDelegate.h
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NavigationControllerDelegate : NSObject<UINavigationControllerDelegate>
@property (nonatomic,strong)UINavigationController *navigationController;

-(void)initRequest;

@end
