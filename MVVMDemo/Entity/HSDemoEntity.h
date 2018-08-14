//
//  HSDemoEntity.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSBaseEntity.h"

@class HSTopicInfo;
@interface HSTopicRoot : HSBaseEntity

@property (nonatomic,strong) HSTopicInfo *info;
@property (nonatomic,strong) NSArray *list;

@end

@interface HSTopicInfo : HSBaseEntity

@property (nonatomic,assign) NSInteger count;
@property (nonatomic,assign) NSInteger page;
@property (nonatomic,copy) NSString *maxid;
@property (nonatomic,copy) NSString *maxtime; // 分页传的数据

@end

@interface HSTopicModel : HSBaseEntity
//     头像的图片url地址
@property (nonatomic,copy) NSString *profile_image;

// 是否新浪大V
@property (nonatomic,assign) BOOL sina_v;

// 发帖人的昵称
@property (nonatomic,copy) NSString *name;

// 帖子的内容
@property (nonatomic,copy) NSString *text;

// 系统审核通过后创建帖子的时间
@property (nonatomic,copy) NSString *created_at;


// 收藏量
@property (nonatomic,assign) NSInteger love;

// 踩的人数
@property (nonatomic,assign) NSInteger cai;

// 转发的数量
@property (nonatomic,assign) NSInteger repost;

// 帖子的被评论数量
@property (nonatomic,assign) NSInteger comment;

// 热门评论数组
@property (nonatomic,strong) NSArray *top_cmt;

@end

@interface HSHotCommnetModel : HSBaseEntity

@property (nonatomic,copy) NSString *content; // 热门评论内容
@property (nonatomic,copy) NSString *username; // 热门评论的人名字

@end


@interface HSDemoEntity : HSBaseEntity

@end
