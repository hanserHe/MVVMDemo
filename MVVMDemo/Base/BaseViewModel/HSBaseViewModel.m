//
//  HSBaseViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/7/17.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseViewModel.h"

@implementation HSBaseViewModel


- (void)setupData
{
    _isSucceed = YES;
    _messgae = @"飞哥就是帅啊！！！";
}

- (void)setupBinding{}

// 抽象方法
- (void)sendRequest:(HSRequestSucceed)succeedBlock failure:(HSRequestFailure)failBlock{}

@end
