//
//  HSDemoModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSDemoModel.h"
#import "HSDemoEntity.h"

@implementation HSDemoModel

- (RACSignal *)requestDemoDataWithPage:(NSInteger)pageNum maxTime:(NSString *)maxTime
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:@"list" forKey:@"a"];
    [dict setValue:@"data" forKey:@"c"];
    [dict setValue:@(29) forKey:@"type"];
    if (pageNum > 0) {
        [dict setValue:maxTime forKey:@"maxtime"];
        [dict setValue:@(pageNum) forKey:@"page"];
    }
    return [self requestWithURLString:@"http://api.budejie.com/api/api_open.php"
                      paramDictionary:dict
                    parserEntityClass:[HSTopicRoot class]];
}

@end
