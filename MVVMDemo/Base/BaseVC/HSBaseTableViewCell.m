//
//  HSBaseTableViewCell.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseTableViewCell.h"

@interface HSBaseTableViewCell()

@property (nonatomic, strong) HSTableViewCellViewModel *viewModel;

@end

@implementation HSBaseTableViewCell

+ (instancetype)cellForTableView:(UITableView *)tableView viewModel:(HSTableViewCellViewModel *)viewModel
{
    NSString *identify = NSStringFromClass([self class]);
    HSBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        [cell setupLayout];
        [cell setupBinding];
    }
    cell.viewModel = viewModel;
    [cell setupData];
    return cell;
}

+ (NSNumber *)calculateRowHeightWithViewModel:(HSTableViewCellViewModel *)viewModel
{
    return nil;
}

- (void)setupLayout{}

- (void)setupBinding{}

- (void)setupData{}



@end






















