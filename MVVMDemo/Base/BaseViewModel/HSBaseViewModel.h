//
//  HSBaseViewModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/7/17.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^HSRequestSucceed)(id entity);
typedef void(^HSRequestFailure)(NSUInteger errCode, NSString *errorMsg);
@interface HSBaseViewModel : NSObject

/**
 请求回调的公共属性
 */
@property (nonatomic,assign,readonly) BOOL isSucceed;
@property (nonatomic,copy,readonly) NSString *messgae;
@property (nonatomic,copy,readonly) NSString *resultCode;

/**
 扩展字段
 */
@property (nonatomic, copy, readonly) NSString *title;

// viewModel初始化的时候默认做的一些操作
- (void)setupData;

// other
- (void)setupBinding;

/**
 * 请求数据操作
 */
- (void)sendRequest:(HSRequestSucceed)succeedBlock failure:(HSRequestFailure)failBlock;

@end
