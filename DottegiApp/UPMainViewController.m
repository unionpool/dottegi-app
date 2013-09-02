//
//  UPMainViewController.m
//  DottegiApp
//
//  Created by Saerohoon Yang on 13. 9. 2..
//  Copyright (c) 2013년 Union Pool. All rights reserved.
//

#import "UPMainViewController.h"

@interface UPMainViewController ()

@end

@implementation UPMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Main Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar-favorite.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *customSectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.bounds.size.width , 30)];
    
    customSectionView.backgroundColor = [UIColor whiteColor];
    
    // create the label
    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, -5, 300, customSectionView.frame.size.height)];
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.opaque = NO;
    headerLabel.textColor = [UIColor blackColor];
    headerLabel.highlightedTextColor = [UIColor blackColor];
    headerLabel.text = @"text";
    
    // package and return
    [customSectionView addSubview:headerLabel];
    
    return customSectionView;
    
    //section header에 이미지 넣는거
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 240;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier"];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell identifier"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 39)];
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 39)];
    bgImageView.image = [UIImage imageNamed:@"title_tw.png"];
    //헤더에 labl이 필요하다면 만들어준다.
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(118, 9, 84, 24)];
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15];
    title.text = @"Friends List";
    [headerView addSubview:bgImageView];  //만들어진 뷰에 배경과 라벨을 넣어준다
    [headerView addSubview:title];
    
    UIImageView *cellImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, tableView.bounds.size.width-20, tableView.bounds.size.width)];
    cellImageView.image = [UIImage imageNamed:@"sample2.jpeg"];

//    cell.imageView.image = [UIImage imageNamed:@"sample.jpg"];
    
    [cell.contentView addSubview:cellImageView];
    
    return cell;
}

- (void)loadView {
    [super loadView];
}

@end
