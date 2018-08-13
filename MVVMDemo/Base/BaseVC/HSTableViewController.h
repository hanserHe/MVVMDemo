//
//  HSTableViewController.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseViewController.h"
#import "HSTableViewModel.h"

@interface HSTableViewController : HSBaseViewController
// 每个VC对应一个ViewModel
@property (nonatomic, strong, readonly) HSTableViewModel *viewModel;
@property (nonatomic, strong, readonly) UITableView *tableView;


@property (nonatomic, assign, readonly) BOOL isRefresh;


@property (nonatomic, assign) BOOL hideFooterLoadingMore;

- (void)endHeaderRefresh;
- (void)endFooterRefresh;

/**
 子类实现，进行数据的请求 binding
 */
- (void)pullTableViewRequestData:(BOOL)isRefresh;


- (Class)cellClassForRowAtIndexPath:(NSIndexPath *)indexPath;


@end
