//
//  AXAttributedLabelViewController.m
//  AXExtensions
//
//  Created by ai on 16/5/13.
//  Copyright © 2016年 AiXing. All rights reserved.
//

#import "AXAttributedLabelViewController.h"
#import "AXAttributedLabel.h"
#import "AXAttributedLabel+Pop.h"

@interface AXAttributedLabelViewController ()
///
@property(weak, nonatomic) IBOutlet AXAttributedLabel *label;
@end

@implementation AXAttributedLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_label pop_setText:@"Multiple availability att[sss]ributes can be placed on a declaration, which may correspond to different platforms. Only the availability attr[sss]ibute with the platform[sss] corre明天sponding to the target pla[sss]tform will be used. https://www.baidu.com the availability 15680002585 any others wil[sss]l be ignored. If no 成都市成华区二仙桥东三路1号 availability attribute specifies availability for the cu[sss]rrent target platform, the a[sss]vailability attributes are ignored."];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
