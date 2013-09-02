//
//  UPUserViewController.m
//  DottegiApp
//
//  Created by Saerohoon Yang on 13. 9. 2..
//  Copyright (c) 2013년 Union Pool. All rights reserved.
//

#import "UPUserViewController.h"

@interface UPUserViewController ()

@end

@implementation UPUserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"User Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar-user.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
