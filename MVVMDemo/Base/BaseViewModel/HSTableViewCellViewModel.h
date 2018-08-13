//
//  HSTableViewCellViewModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseViewModel.h"
typedef NSNumber * _Nonnull (^HSTableCellViewModelCaculateBlock)(void);

@interface HSTableViewCellViewModel : HSBaseViewModel

/**
 cellViewModel绑定一个entity实例对象
 */
@property (nonatomic, strong, readonly, nullable) id entity;

/**
 每个cellViewModel里面有一个实体，然后有一个字段计算高度，缓存
 */
@property (nonatomic, strong, nullable) NSNumber *rowHeight;

/**
 cell点击事件的监听
 */
@property (nonatomic, strong, nullable) RACSubject *cellSelectSignal;

- (nullable instancetype)initWithEntity:(nullable id)entity;

- (NSNumber *_Nonnull)cacheCellHeightWithCalculateBlock:(_Nonnull HSTableCellViewModelCaculateBlock)calculateHieghtBlock;


@end
