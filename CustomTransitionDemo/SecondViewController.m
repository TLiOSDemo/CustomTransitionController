//
//  SecondViewController.m
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.title=@"SecondViewController";
    self.view.backgroundColor=[UIColor blueColor];
    
    UILabel *lb=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 40)];
    lb.center=self.view.center;
    lb.font=[UIFont systemFontOfSize:19];
    lb.text=@"Hello world";
    [self.view addSubview:lb];
}
@end
