//
//  HSPagingTableViewController.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewController.h"
#import "HSPagingTableViewModel.h"

@interface HSPagingTableViewController : HSTableViewController

@property (nonatomic, strong, readonly) HSPagingTableViewModel *viewModel;

- (instancetype)initWithViewModel:(HSPagingTableViewModel *)viewModel;

- (void)hideLoadingViewFooter;

@end
