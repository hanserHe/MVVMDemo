//
//  HSDemoViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSDemoViewModel.h"
#import "HSDemoModel.h"
#import "HSDemoEntity.h"

@interface HSDemoViewModel()

/**
 每个viewModel都有一个Model用来请求输出  请求的数据通过带过去的class生成对应的模型返回，组装给entity(数据模型)
 */
@property (nonatomic, strong) HSDemoModel *model;
@property (nonatomic, strong) HSTopicRoot *entity;

@end

@implementation HSDemoViewModel

- (void)setupData
{
    [super setupData];
    _model = [[HSDemoModel alloc] init];
}

- (void)sendRequest:(HSRequestSucceed)succeedBlock failure:(HSRequestFailure)failBlock
{
    [[self.model requestDemoDataWithPage:[self.currentPage integerValue] maxTime:self.curentMaxTime] subscribeNext:^(id data) {
        if (data) {
            self.entity = data;
            
        }
    }];
}

- (NSInteger)numberOfRowInSection:(NSInteger)section
{
    return self.cellViewModels.count;
}

- (HSTableViewCellViewModel *)cellViewModelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.cellViewModels[indexPath.row];
}


- (HSBaseViewController *)tableViewDidSelectedRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
