//
//  HSBaseModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/7/26.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSBaseModel : NSObject

- (RACSignal *)requestWithURLString:(NSString *)URLString
                    paramDictionary:(NSDictionary *)paramDictionary
                  parserEntityClass:(Class)parserEntityClass;

@end
