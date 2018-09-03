//
//  ViewController.m
//  MVVMDemo
//
//  Created by Hanser on 2018/7/17.
//  Copyright © 2018 Mr.H. All rights reserved.
//

#import "ViewController.h"
#import "HSDemoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (IBAction)gotoDemo:(id)sender {
    HSDemoViewModel *viewModel = [[HSDemoViewModel alloc] init];
    HSDemoViewController *demoVC = [[HSDemoViewController alloc] initWithViewModel:viewModel];
    [self.navigationController pushViewController:demoVC animated:YES];
}


@end
