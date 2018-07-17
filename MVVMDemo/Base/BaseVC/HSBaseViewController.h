//
//  HSBaseViewController.h
//  MVVMDemo
//
//  Created by Hanser on 2018/7/17.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSBaseViewModel.h"

@interface HSBaseViewController : UIViewController

// baseVC的基础viewModel
@property (nonatomic, strong, readonly) HSBaseViewModel *viewModel;

/**
 * 唯一的初始化方法
 * @param viewModel 传入的viewModel
 * @return 实例化的对象
 */
- (instancetype)initWithModel:(HSBaseViewModel *)viewModel;

/**
 * UI布局
 */
- (void)setupLayout;

/**
 * 数据请求与绑定
 */
- (void)setupBinding;

/**
 * 设置回调，以及点击事件处理
 */
- (void)setupData;

@end
