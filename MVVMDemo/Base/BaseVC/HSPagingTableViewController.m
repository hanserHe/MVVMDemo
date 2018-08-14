//
//  HSPagingTableViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSPagingTableViewController.h"

@interface HSPagingTableViewController ()

@property (nonatomic, strong) HSPagingTableViewModel *viewModel;

@end

@implementation HSPagingTableViewController
@dynamic viewModel;


- (instancetype)initWithModel:(HSPagingTableViewModel *)viewModel
{
    return [super initWithModel:viewModel];
}

- (void)setupLayout
{
    [super setupLayout];
}

- (void)setupBinding
{
    [super setupBinding];
}

- (void)hideLoadingViewFooter
{
    if (self.viewModel.isSucceed)
    {
        self.hideFooterLoadingMore = self.viewModel.isNeedHiddenFooter;
    }
    else
    {
        NSLog(@"Error");
    }
    [self endHeaderRefresh];
    [self endFooterRefresh];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
