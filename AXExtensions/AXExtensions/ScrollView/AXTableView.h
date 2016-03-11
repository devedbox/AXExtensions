//
//  AXTableView.h
//  AXExtensions
//
//  Created by ai on 16/3/11.
//  Copyright © 2016年 AiXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AXTableView;
@protocol AXTableViewDelegate <NSObject>
@required
- (void)tableViewRefreshData:(AXTableView *)tableView;
- (void)tableViewMoreData:(AXTableView *)tableView;
@end

@interface AXTableView : UITableView
/// Refresh delegate
@property(assign, nonatomic) IBOutlet id<AXTableViewDelegate>refreshDelegate;
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

@interface UITableView (PlaceHolder)
/// Place hodler string content.
@property(copy, nonatomic) IBInspectable NSString *placeHolderContent;
/// Place holder label font. Default is system 26pt.
@property(strong, nonatomic) IBInspectable UIFont *placeHolderFont;
/// Place holder label text color. Default is light gray color.
@property(strong, nonatomic) IBInspectable UIColor *placeHolderTextColor;
/// Place hodler image.
@property(strong, nonatomic) IBInspectable UIImage *placeHolderImage;
/// Offset of place holder content. Default is (0, 0).
@property(assign, nonatomic) IBInspectable CGPoint placeHolderOffset;
@end