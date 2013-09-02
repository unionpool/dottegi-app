//
//  UPCameraViewController.m
//  DottegiApp
//
//  Created by Saerohoon Yang on 13. 9. 2..
//  Copyright (c) 2013년 Union Pool. All rights reserved.
//

#import "UPCameraViewController.h"

@interface UPCameraViewController ()

@end

@implementation UPCameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Camera";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar-camera.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
