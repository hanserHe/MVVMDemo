//
//  HSDemoViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/3.
//  Copyright © 2018年 Mr.H. All rights reserved.
//

#import "HSDemoViewController.h"
#import "NSTimer+HSTimer.h"

@interface HSDemoViewController ()

@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic, assign) NSInteger number;

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) UIButton *button;

@end

@implementation HSDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _number = 1;
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
    [self.timer fire];
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)timerMethod {
//    __weak typeof(self) wself = self;
    self.number++;
    [self.label setText:[NSString stringWithFormat:@"%ld",self.number]];
}


#pragma mark - Init
- (NSTimer *)timer {
    if (_timer) {
        return _timer;
    }
//    _timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerMethod) userInfo:nil repeats:YES];
    _timer = [NSTimer scheduledHSTimerWithTimeInterval:1 target:self selector:@selector(timerMethod) userInfo:nil repeats:YES];
    return _timer;
}

- (UILabel *)label {
    if (_label) {
        return _label;
    }
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont systemFontOfSize:15];
    _label.textColor = [UIColor blackColor];
    _label.center = self.view.center;
    return _label;
}

- (UIButton *)button {
    if (_button) {
        return _button;
    }
    _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 50, 100)];
    _button.backgroundColor = [UIColor yellowColor];
    [_button addTarget:self action:@selector(event) forControlEvents:UIControlEventTouchUpInside];
    return _button;
}

#pragma mark - Other

- (void)event {
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)dealloc {
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
}

@end
