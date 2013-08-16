//
//  ViewController.m
//  XFSwiperView
//
//  Created by Soft on 13-8-16.
//  Copyright (c) 2013年 eShell -- 新风作浪. All rights reserved.
//

#import "ViewController.h"

#import "CenterViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
    CenterViewController *centerView = [self.storyboard instantiateViewControllerWithIdentifier:@"CenterViewController"];
    UINavigationController *centerNav = [[UINavigationController alloc] initWithRootViewController:centerView];
    centerView.title  =@"Center";
    self.centerViewController = centerNav;
    self.leftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftViewController"];
    self.leftVisibleWidth = 100;
    self.rightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"RightViewController"];
    self.rightVisibleWidth  = self.view.frame.size.width;
    self.bottomViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BottomViewController"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
