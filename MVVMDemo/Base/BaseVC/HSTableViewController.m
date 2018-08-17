//
//  HSTableViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewController.h"
#import "HSBaseTableViewCell.h"


@interface HSTableViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) BOOL isRefresh;

@end

@implementation HSTableViewController
@dynamic viewModel;

- (instancetype)initWithViewModel:(HSBaseViewModel *)viewModel
{
    return [super initWithModel:viewModel];
}

- (void)setupLayout
{
    [super setupLayout];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:[self.viewModel tableViewStyle]];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = 80;
    _tableView.showsHorizontalScrollIndicator = NO;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_tableView];
    @weakify(self);
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.edges.equalTo(self.view);
    }];
    
    
    // 添加头部刷新控件
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        @strongify(self);
        self.isRefresh = YES;
        [self pullTableViewRequestData:self.isRefresh];
    }];
    
    
    // 添加尾部刷新控件
    self.tableView.mj_footer = [MJRefreshAutoFooter footerWithRefreshingBlock:^{
        @strongify(self);
        self.isRefresh = NO;
        [self pullTableViewRequestData:self.isRefresh];
    }];
    
    self.tableView.mj_header.hidden = NO;
    self.tableView.mj_footer.hidden = YES;
}

- (void)setupBinding
{
    [super setupBinding];
}

/**
 舒心的时候调用，子类重写
 */
- (void)pullTableViewRequestData:(BOOL)isRefresh{}

- (Class)cellClassForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @throw [NSException exceptionWithName:@"抽象方法未实现"
                                   reason:[NSString stringWithFormat:@"%@ 必须实现抽象方法 %@",[self class],NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

#pragma mark - UITableViewDelegate && UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.viewModel numberOfSection];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewModel numberOfRowInSection:section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [self.viewModel heightForHeaderInSection:section];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self.viewModel viewForHeaderInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HSBaseTableViewCell *cell = [[self cellClassForRowAtIndexPath:indexPath] cellForTableView:tableView viewModel:[self.viewModel cellViewModelForRowAtIndexPath:indexPath]];
    cell.selectionStyle = [self.viewModel tableViewCellSelectionStyle];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = tableView.rowHeight;
    NSNumber *calculateHeight = [[self cellClassForRowAtIndexPath:indexPath] ];
}

@end





















