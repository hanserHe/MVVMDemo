//
//  HSTimer.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/5.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import "HSTimer.h"

@implementation HSTimer

- (void)timered:(NSTimer *)timer {
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [self.target performSelector:self.selector withObject:timer];
#pragma clang diagnostic pop
    
}

- (void)dealloc {
    NSLog(@"HSTimer---dealloc");
}

@end
