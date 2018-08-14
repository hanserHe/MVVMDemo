//
//  HSDemoModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseModel.h"

@interface HSDemoModel : HSBaseModel

- (RACSignal *)requestDemoDataWithPage:(NSInteger)pageNum maxTime:(NSString *)maxTime;

@end
