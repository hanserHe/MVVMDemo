//
//  NSTimer+HSTimer.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/5.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (HSTimer)

+ (NSTimer *)scheduledHSTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;

@end
