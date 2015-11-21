//
//  ViewController.m
//  AXExtensions
//
//  Created by ai on 15/11/20.
//  Copyright © 2015年 AiXing. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Title.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setTitle:@"ViewController" color:nil font:nil];
    [self.titleView.activityIndicator startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
