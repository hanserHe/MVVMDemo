//
//  HSTableViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewModel.h"


@interface HSTableViewModel()

@property (nonatomic, strong) NSMutableArray *cellViewModels;

@end

@implementation HSTableViewModel

- (UITableViewStyle)tableViewStyle
{
    return UITableViewStylePlain;
}

- (UITableViewCellSelectionStyle)tableViewCellSelectionStyle
{
    return UITableViewCellSelectionStyleNone;
}

- (NSInteger)numberOfSection
{
    return 1;
}

- (NSInteger)numberOfRowInSection:(NSInteger)section
{
    @throw [NSException exceptionWithName:@"抽象方法为实现"
                                   reason:[NSString stringWithFormat:@"%@ 必须实现抽象方法 %@",[self class],NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (CGFloat)heightForHeaderInSection:(NSInteger)section
{
    return 1;
}

- (UIView *)viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (HSTableViewCellViewModel *)cellViewModelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @throw [NSException exceptionWithName:@"抽象方法为实现"
                                   reason:[NSString stringWithFormat:@"%@ 必须实现抽象方法 %@",[self class],NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (void)handleMutableArrayEntities:(NSArray *)entities cellViewModelClass:(Class)cellViewModelClass
{
    NSMutableArray *cellViewModels = [NSMutableArray array];
    [entities enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [cellViewModels addObject:[[cellViewModelClass alloc] initWithEntity:obj]];
    }];
    [self.cellViewModels addObjectsFromArray:cellViewModels];
}


- (NSMutableArray *)cellViewModels
{
    if (_cellViewModels == nil) {
        _cellViewModels = [NSMutableArray new];
    }
    return _cellViewModels;
}
















@end
