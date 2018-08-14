//
//  HSTableViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewController.h"


@interface HSTableViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) BOOL isRefresh;

@end

@implementation HSTableViewController
@dynamic viewModel;

- (instancetype)initWithViewModel:(HSBaseViewModel *)viewModel
{
    return [super initWithModel:viewModel];
}

- (void)setupLayout
{
    [super setupLayout];
    
}

@end





















