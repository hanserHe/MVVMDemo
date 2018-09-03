//
//  HSBaseModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/7/26.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseModel.h"
#import "HSHTTPHelper.h"

@interface HSBaseModel()

@property (nonatomic, strong) HSHTTPHelper *httpHelper;

@end

@implementation HSBaseModel

- (RACSignal *)requestWithURLString:(NSString *)URLString
                    paramDictionary:(NSDictionary *)paramDictionary
                  parserEntityClass:(Class)parserEntityClass
{
    @weakify(self);
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        @strongify(self);
        [self.httpHelper requestWithURLString:URLString paramDictionary:paramDictionary entityClass:parserEntityClass completeBlock:^(id data) {
//            NSLog(@"data-----%@",data);
            [subscriber sendNext:data];
            [subscriber sendCompleted];
        }];
        return nil;
    }];
}


- (HSHTTPHelper *)httpHelper
{
    if (_httpHelper) {
        return _httpHelper;
    }
    _httpHelper = [HSHTTPHelper new];
    return _httpHelper;
}


@end
