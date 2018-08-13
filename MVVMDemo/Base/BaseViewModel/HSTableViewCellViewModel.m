//
//  HSTableViewCellViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewCellViewModel.h"

@interface HSTableViewCellViewModel()

@property (nonatomic, strong, nullable) id entity;

@end

@implementation HSTableViewCellViewModel

- (instancetype)initWithEntity:(id)entity
{
    self = [super init];
    if (self) {
        _entity = entity;
        _cellSelectSignal = [RACSubject subject];
    }
    return self;
}

- (NSNumber *)cacheCellHeightWithCalculateBlock:(HSTableCellViewModelCaculateBlock)calculateHieghtBlock
{
    if (!self.rowHeight) {
        self.rowHeight = calculateHieghtBlock();
    }
    return self.rowHeight;
}

@end
