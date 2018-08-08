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
    HSDemoViewController *demoVC = [HSDemoViewController new];
    [self.navigationController pushViewController:demoVC animated:YES];
}


@end
