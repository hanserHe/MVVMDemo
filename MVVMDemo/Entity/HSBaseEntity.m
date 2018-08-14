//
//  HSBaseEntity.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseEntity.h"

@implementation HSBaseEntity

+ (instancetype)parserEntityWithDictionary:(NSDictionary *)dictionary
{
    if (!dictionary || ![dictionary isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    return [self yy_modelWithDictionary:dictionary];
}

@end
