//
//  HSDemoTableViewCell.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSDemoTableViewCell.h"


@interface HSDemoTableViewCell()

@end

@implementation HSDemoTableViewCell
@dynamic viewModel;


+ (NSNumber *)calculateRowHeightWithViewModel:(HSDemoTableViewCellViewModel *)viewModel
{
    return [viewModel cacheCellHeightWithCalculateBlock:^NSNumber * _Nonnull{
        return viewModel.totalHeight;
    }];
}

@end
