//
//  HSPagingTableViewModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewModel.h"

@interface HSPagingTableViewModel : HSTableViewModel

@property (nonatomic, strong, readonly) NSNumber *currentPage;
@property (nonatomic, strong, readonly) NSString *curentMaxTime;
@property (nonatomic, assign, readonly) BOOL isNeedHiddenFooter;

/**
 下拉刷新的回调实现在控制器中，判断是否isRefresh来进行是否把currentPage置0
 */
- (void)initRequestPullPage;

/**
 父类有一个方法给cellModels根据entity加载出不同的cellViewModel,这里包装一层在此通过currentPage进行更改
 @param entities 请求返回的实体数组
 @param totalCount 总数量
 @param cellViewModelClass cellViewModel类型 初始化用
 */
- (void)handlePagingEntities:(NSArray *)entities
                  totalCount:(NSNumber*)totalCount
          cellViewModelClass:(Class)cellViewModelClass
                     maxTime:(NSString *)maxTime;


@end
