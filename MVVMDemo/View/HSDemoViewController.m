//
//  HSDemoViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/3.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import "HSDemoViewController.h"
#import "HSDemoTableViewCell.h"



@interface HSDemoViewController ()

@end

@implementation HSDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupLayout];
    [self setupBinding];
    [self setupData];
}

- (void)setupLayout
{
    [super setupLayout];
    @weakify(self);
    [RACObserve(self.viewModel, isNeedRefresh) subscribeNext:^(id x) {
        @strongify(self);
        if ([x boolValue]) {
            [self.tableView reloadData];
        }
    }];
}

- (void)setupBinding
{
    [super setupBinding];
    @weakify(self);
    [self.viewModel sendRequest:^(id entity) {
        @strongify(self);
        [self hideLoadingViewFooter];
        [self.tableView reloadData];
        
    } failure:^(NSUInteger errCode, NSString *errorMsg) {
        
    }];
}

- (void)setupData
{
    [super setupData];
}

- (Class)cellClassForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [HSDemoTableViewCell class];
}


#pragma mark - life cycle
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

#pragma mark - notification

#pragma mark - action

#pragma mark - UITableViewDelegate

#pragma mark - UI

#pragma mark - setter & getter


#pragma mark ------------------
- (void)dealloc {

}

@end
