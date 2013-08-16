//
//  LeftViewController.m
//  XFSwiperView
//
//  Created by Soft on 13-8-16.
//  Copyright (c) 2013年 eShell -- 新风作浪. All rights reserved.
//

#import "LeftViewController.h"
#import "UIViewController+RNSwipeViewController.h"
@interface LeftViewController ()

@end

@implementation LeftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changedPercentReveal:(NSInteger)percent
{
    if (percent == 100) {
        /*
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"这是一个测试" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show ];
         */
        UIViewController *visibleController = self.swipeController.visibleController;
    }
}
@end
