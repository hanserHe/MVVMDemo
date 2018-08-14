//
//  HSBaseView.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSBaseViewModel.h"

@interface HSBaseView : UIView

@property (nonatomic, strong, readonly)  HSBaseViewModel *viewModel;

- (instancetype)initWithFrame:(CGRect)frame viewModel:(HSBaseViewModel *)viewModel;

- (void)setupLayout;
- (void)setupBinding;
- (void)setupData;


@end
