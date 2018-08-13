//
//  HSPagingTableViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSPagingTableViewModel.h"

@interface HSPagingTableViewModel()

@property (nonatomic, strong) NSNumber *currentPage;
@property (nonatomic, strong) NSString *curentMaxTime;
@property (nonatomic, assign) BOOL isNeedHiddenFooter;

@end

@implementation HSPagingTableViewModel


- (void)setupData
{
    [self initRequestPullPage];
}

- (void)initRequestPullPage
{
    self.currentPage = @(0);
    self.curentMaxTime = @"";
}

- (void)handlePagingEntities:(NSArray *)entities totalCount:(NSNumber *)totalCount cellViewModelClass:(Class)cellViewModelClass maxTime:(NSString *)maxTime
{
    if ([self.currentPage isEqualToNumber:@0]) {
        [self.cellViewModels removeAllObjects];
    }
    [self handleMutableArrayEntities:entities cellViewModelClass:cellViewModelClass];
    self.isNeedHiddenFooter = !(totalCount.integerValue > self.cellViewModels.count);
    self.curentMaxTime = maxTime;
}






@end
