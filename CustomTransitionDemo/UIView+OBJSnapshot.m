//
//  UIView+OBJSnapshot.m
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/29.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "UIView+OBJSnapshot.h"

@implementation UIView (OBJSnapshot)

/**
 *  得到当前屏幕的截图
 *
 *  @return
 */
- (UIImage*)objc_snapshot{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size,NO,0);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}

@end
