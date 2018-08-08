//
//  HSTimer.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/5.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSTimer : NSObject

@property (nonatomic, weak) id target;
@property (nonatomic) SEL selector;

- (void)timered:(NSTimer *)timer;

@end
