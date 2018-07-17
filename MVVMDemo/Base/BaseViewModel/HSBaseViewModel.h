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
 * 请求数据操作
 */
- (void)sendRequest:(HSRequestSucceed)succeedBlock failure:(HSRequestFailure)failBlock;

@end
