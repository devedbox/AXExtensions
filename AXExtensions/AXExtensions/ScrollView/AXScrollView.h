//
//  AXScrollView.h
//  AXExtensions
//
//  Created by ai on 16/3/11.
//  Copyright © 2016年 AiXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AXScrollView;
@protocol AXScrollViewDelegate <NSObject>
@required
- (void)scrollViewRefreshData:(AXScrollView *)scrollView;
- (void)scrollViewMoreData:(AXScrollView *)scrollView;
@end

@interface AXScrollView : UIScrollView
/// Refresh delegate
@property(assign, nonatomic) IBOutlet id<AXScrollViewDelegate>refreshDelegate;
/// max load time of refresh, default 10.f
@property(assign, nonatomic) IBInspectable CGFloat maxLoadTimeOfRefresh;
/// Refresh header enabled, Default is YES.
@property(assign, nonatomic) IBInspectable BOOL refreshHeaderEnabled;
/// Refresh footer enabled, Default is YES.
@property(assign, nonatomic) IBInspectable BOOL refreshFooterEnabled;
/// Refresh data
- (void)refreshData;
/// Load more data
- (void)moreData;
/// End header refreshing.
- (void)endRefreshHeader;
/// End footer refreshing.
- (void)endRefreshFooter;
@end