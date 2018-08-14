//
//  HSDemoTableViewCellViewModel.m
//  MVVMDemo
//
//  Created by Hanser on 2018/8/14.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "HSDemoTableViewCellViewModel.h"


@interface HSDemoTableViewCellViewModel ()

@property (nonatomic, strong) HSTopicModel *entity;

@end

@implementation HSDemoTableViewCellViewModel
@dynamic entity;

- (NSString *)publishTopicContent
{
    return self.entity.text;;
}

- (NSString *)headerImageURL
{
    return self.entity.profile_image;
}

- (NSString *)name
{
    return self.entity.name;
}

- (NSString *)createTime
{
    return self.entity.created_at;
}

- (NSNumber *)hotCommentHeight
{
    if (self.entity.top_cmt.count == 0) {
        return @0;
    }
    HSHotCommnetModel *model = self.entity.top_cmt.firstObject;
    NSMutableAttributedString *mutableAtt = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@:",model.username]
                                                                                   attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:13],
                                                                                                NSForegroundColorAttributeName : [UIColor blueColor]}];
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:model.content
                                                                 attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:13],
                                                                              NSForegroundColorAttributeName : [UIColor blackColor]}];
    [mutableAtt appendAttributedString:string];
    return @([mutableAtt boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 40, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.height);
}

- (NSNumber *)totalHeight
{
    CGFloat contentHeight = [[self publishTopicContent] boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 40, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:15]} context:nil].size.height + 40;
    CGFloat hotCommentHeight = [[self hotCommentHeight] floatValue];
    
    if (self.entity.top_cmt.count != 0) {
        return @(50 + contentHeight + 50 + 20 + hotCommentHeight + 20);
    }
    return @(50 + contentHeight + 50 + 20);
}




@end
