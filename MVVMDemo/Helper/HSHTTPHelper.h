//
//  HSHTTPHelper.h
//  MVVMDemo
//
//  Created by Hanser on 2018/7/26.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^HSRequestFinishBlock)(id data);

@interface HSHTTPHelper : NSObject

/*
 网络请求
 
 @param urlString URL
 @param paramDictionary 请求参数
 @param entityClass 请求之后数据转化的对象
 @param completeBlock 数据回调
 
 */

- (void)requestWithURLString:(NSString *)urlString
             paramDictionary:(NSDictionary *)paramDictionary
                 entityClass:(Class)parserEntityClass
               completeBlock:(HSRequestFinishBlock)completeBlock;

@end
