//
//  HSHTTPHelper.m
//  MVVMDemo
//
//  Created by Hanser on 2018/7/26.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSHTTPHelper.h"
#import <AFNetworking.h>

@implementation HSHTTPHelper

- (void)requestWithURLString:(NSString *)urlString
             paramDictionary:(NSDictionary *)paramDictionary
                 entityClass:(Class)parserEntityClass
               completeBlock:(HSRequestFinishBlock)completeBlock
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
}

@end
