//
//  SecondViewController.m
//  Bar的问题
//
//  Created by Tiny on 15/6/16.
//  Copyright (c) 2015年 com.sadf. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    CGRect barFrame;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"第二页";
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:19.0]}];
    self.title=[NSString stringWithFormat:@"第%lu页",(unsigned long)self.navigationController.viewControllers.count];


    //【参考链接：http://stackoverflow.com/questions/19029833/ios-7-navigation-bar-text-and-arrow-color】
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor orangeColor]}];
    self.navigationController.navigationBar.translucent = NO;
    
    //【参考链接】http://stackoverflow.com/questions/20578994/on-ios-7-pushing-a-controller-with-a-toolbar-leaves-a-gap-of-unusable-space-if
    barFrame = self.tabBarController.tabBar.frame;
    [self.tabBarController.tabBar setFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.tabBarController.tabBar setFrame:barFrame];
    [super viewWillDisappear:animated];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
