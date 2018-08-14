//
//  HSBaseView.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseView.h"

@interface HSBaseView()

@property (nonatomic, strong) HSBaseViewModel *viewModel;

@end

@implementation HSBaseView

- (instancetype)initWithFrame:(CGRect)frame viewModel:(HSBaseViewModel *)viewModel
{
    self = [super initWithFrame:frame];
    if (self) {
        _viewModel = viewModel;
        [self setupLayout];
        [self setupBinding];
        [self setupData];
    }
    return self;
}


- (void)setupLayout{}

- (void)setupBinding{}

- (void)setupData{}


@end








