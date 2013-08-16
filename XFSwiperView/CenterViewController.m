//
//  CenterViewController.m
//  XFSwiperView
//
//  Created by Soft on 13-8-16.
//  Copyright (c) 2013年 eShell -- 新风作浪. All rights reserved.
//

#import "CenterViewController.h"
#import "UIViewController+RNSwipeViewController.h"
@interface CenterViewController ()

@end

@implementation CenterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Center";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBtn.frame = CGRectMake(0, 0, 44, 44);
    [leftBtn setImage:[UIImage imageNamed:@"left.png"] forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(toggleLeft) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBar = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = leftBar
    ;
    
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(self.view.frame.size.width-44, 0,44 , 44);
    [rightBtn setImage:[UIImage imageNamed:@"right.png"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(toggleRight) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = rightBar;
    ;
     
	// Do any additional setup after loading the view.
}

-(void)toggleLeft
{
    [self.swipeController showLeft];
}

-(void)toggleRight
{
    [self.swipeController showRight];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
