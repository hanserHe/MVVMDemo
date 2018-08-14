//
//  HSBaseEntity.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

@interface HSBaseEntity : NSObject <YYModel>

+ (instancetype)parserEntityWithDictionary:(NSDictionary *)dictionary;

@end
