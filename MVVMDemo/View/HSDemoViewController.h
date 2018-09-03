//
//  HSDemoViewController.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/3.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import "HSPagingTableViewController.h"
#import "HSDemoViewModel.h"

@interface HSDemoViewController : HSPagingTableViewController

@property (nonatomic, strong, readonly) HSDemoViewModel *viewModel;

@end
