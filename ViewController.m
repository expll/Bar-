//
//  ViewController.m
//  Bar的问题
//
//  Created by Tiny on 15/6/16.
//  Copyright (c) 2015年 com.sadf. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame =  CGRectMake(100, 100, 100, 50);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(pushViewController) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.title = @"主页";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController
{
    [self.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:19.0]} forState:UIControlStateNormal];
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
