//
//  HSBaseViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/7/17.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseViewController.h"

@interface HSBaseViewController ()

@property (nonatomic, strong) HSBaseViewModel *viewModel;

@end

@implementation HSBaseViewController

- (instancetype)initWithViewModel:(HSBaseViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)setupLayout {}

- (void)setupBinding {}

- (void)setupData {}



- (void)dealloc {
    NSLog(@"%s---------dealloc",object_getClassName(self));
}


@end
