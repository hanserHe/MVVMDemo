//
//  HSDemoTableViewCell.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseTableViewCell.h"
#import "HSDemoTableViewCellViewModel.h"

@interface HSDemoTableViewCell : UITableViewCell

@property (nonatomic, strong, readonly) HSDemoTableViewCellViewModel *viewModel;

@end
