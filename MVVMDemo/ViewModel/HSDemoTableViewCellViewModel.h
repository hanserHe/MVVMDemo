//
//  HSDemoTableViewCellViewModel.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSTableViewCellViewModel.h"
#import "HSDemoEntity.h"

@interface HSDemoTableViewCellViewModel : HSTableViewCellViewModel

@property (nonatomic, strong, readonly) HSTopicModel *entity;


// 暴露在外面的文本
- (NSString *)publishTopicContent;

- (NSString *)headerImageURL;

- (NSString *)name;

- (NSString *)createTime;

- (NSString *)hotCommentHeight;

- (NSNumber *)totalHeight;

@end
