//
//  HSTableViewModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseViewModel.h"
#import <UIKit/UIKit.h>
#import "HSTableViewCellViewModel.h"

@interface HSTableViewModel : HSBaseViewModel

/**
 通过实体组成的cellViewModel
 */
@property (nonatomic, strong, readonly) NSMutableArray *cellViewModels;

/**
 外部通过KVO监听该字段是否需要刷新tableView
 */
@property (nonatomic, assign) BOOL isNeedRefresh;

#pragma mark - tableView的代理通过ViewModel来实现

/**
 UITableView属性 plain or group
 */
- (UITableViewStyle)tableViewStyle;

/**
 UITableViewCell点击状态
 */
- (UITableViewCellSelectionStyle)tableViewCellSelectionStyle;

/**
section 个数
 */
- (NSInteger)numberOfSection;

/**
 row 行数
 */
- (NSInteger)numberOfRowInSection:(NSInteger)section;

/**
 对应section的header高度
 */
- (CGFloat)heightForHeaderInSection:(NSInteger)section;

/**
 对应section头部
 */
- (UIView *)viewForHeaderInSection:(NSInteger)section;

/**
 UITableViewCell点击状态
 */
- (HSTableViewCellViewModel *)cellViewModelForRowAtIndexPath:(NSIndexPath *)indexPath;


/**
 ViewModel里面的cellViewModel数组存储通过实体对象初始化的cellViewModel
 这个方法是默认给一个Section的时候调用的，如果分页的话需要再封装一层，外部进行代码的分离，然后根据currentPage进行数组的清空还是加载
 */
- (void)handleMutableArrayEntities:(NSArray *)entities cellViewModelClass:(Class)cellViewModelClass;














@end
