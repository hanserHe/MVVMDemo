//
//  HSDemoEntity.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSDemoEntity.h"

@implementation HSTopicRoot

+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{
             @"list" : HSTopicModel.class
             };
}


@end

@implementation HSTopicInfo


@end

@implementation HSTopicModel 
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{
             @"top_cmt" : HSHotCommnetModel.class
             };
}

@end

@implementation HSHotCommnetModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper
{
    return @{
             @"username":@"user.username"
             };
}

@end


@implementation HSDemoEntity

@end
