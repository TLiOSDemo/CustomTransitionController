//
//  ViewController.m
//  CustomTransitionDemo
//
//  Created by Andrew on 16/4/28.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor=[UIColor whiteColor];
     self.title=@"ViewController";
    [self initView];
}


-(void)initView{
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(10, 10, 100, 50)];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.center=self.view.center;
    [btn addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)pushAction:(UIButton *)btn{
    SecondViewController *vc=[[SecondViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
