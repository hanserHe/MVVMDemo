//
//  HSTableViewModelProtocol.h
//  MVVMDemo
//
//  Created by Hanser on 2018/8/13.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSBaseViewController.H"

@protocol HSTableViewModelProtocol <NSObject>

- (HSBaseViewController *)tableViewDidSelectedRowAtIndexPath:(NSIndexPath *)indexPath;

@end
