//
//  HSBaseTableViewCell.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewModel.h"

@interface HSBaseTableViewCell : UITableViewCell

/**
 cell的初始化方法
 通过cellViewModel创建一个cell 调用setupData绑定数据
 @param tableView tableView
 @param viewModel cellViewModel
 @return cell
 */
+ (instancetype)cellForTableView:(UITableView *)tableView viewModel:(HSTableViewCellViewModel *)viewModel;

- (void)setupLayout;
- (void)setupBinding;
- (void)setupData;

+ (NSNumber *)calculateRowHeightWithViewModel:(HSTableViewCellViewModel *)viewModel;

@end
