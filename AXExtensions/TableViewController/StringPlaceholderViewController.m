//
//  StringPlaceholderViewController.m
//  AXExtensions
//
//  Created by ai on 16/3/11.
//  Copyright © 2016年 AiXing. All rights reserved.
//

#import "StringPlaceholderViewController.h"

@interface StringPlaceholderViewController ()

@end

@implementation StringPlaceholderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    _tableView.placeHolderContent = @"No.";
    _tableView.indicatorViewEnabled = YES;
}
@end
