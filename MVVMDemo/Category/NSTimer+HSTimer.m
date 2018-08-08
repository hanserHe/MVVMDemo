//
//  NSTimer+HSTimer.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/5.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import "NSTimer+HSTimer.h"
#import "HSTimer.h"

@implementation NSTimer (HSTimer)

+ (NSTimer *)scheduledHSTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    HSTimer *hsTimer = [HSTimer new];
    hsTimer.target = aTarget;
    hsTimer.selector = aSelector;
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:ti target:hsTimer selector:@selector(timered:) userInfo:nil repeats:yesOrNo];
    return timer;
}

@end
