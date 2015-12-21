//
//  UIViewController+Title.m
//  AXSwift2OC
//
//  Created by ai on 9/6/15.
//  Copyright © 2015 ai. All rights reserved.
//

#import "UIViewController+Title.h"
#import <objc/runtime.h>

@implementation UIViewController (Title)
#pragma mark - Getters
- (AXTitleView *)titleView {
    UIView *view = objc_getAssociatedObject(self, _cmd);
    if (view && [view isKindOfClass:[AXTitleView class]]) {
        return (AXTitleView *)view;
    }
    AXTitleView *titleView = [[AXTitleView alloc] init];
    objc_setAssociatedObject(self, _cmd, titleView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return titleView;
}
#pragma mark - Public
- (void)setTitle:(NSString *)title color:(UIColor *)color font:(UIFont *)font {
    [self setTitle:title];
    if (color) {
        self.titleView.titleLabel.textColor = color;
        self.titleView.activityIndicator.color = color;
    }
    if (font) self.titleView.titleLabel.font = font;
    self.titleView.titleLabel.text = [self title];
    self.navigationItem.titleView = self.titleView;
}
@end

@implementation AXTitleView
#pragma mark - Life cycle
- (instancetype)init {
    if (self = [super init]) {
        [self initializer];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initializer];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initializer];
    }
    return self;
}

- (void)initializer {
    self.backgroundColor   = [UIColor clearColor];
    [self addSubview:self.activityIndicator];
    [self addSubview:self.titleLabel];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_activityIndicator(size)]-10-[_titleLabel]-rightMargin-|" options:0 metrics:@{@"size":@(_titleLabel.font.pointSize),@"rightMargin":@(_titleLabel.font.pointSize+10)} views:NSDictionaryOfVariableBindings(_activityIndicator, _titleLabel)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_activityIndicator(size)]|" options:0 metrics:@{@"size":@(_titleLabel.font.pointSize)} views:NSDictionaryOfVariableBindings(_activityIndicator)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_titleLabel]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_titleLabel)]];
}

#pragma mark - Getters
- (UIActivityIndicatorView *)activityIndicator {
    if (_activityIndicator) return _activityIndicator;
    _activityIndicator                  = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    _activityIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    _activityIndicator.color            = [UIColor colorWithRed:0.100f green:0.100f blue:0.100f alpha:0.800f];
    _activityIndicator.hidesWhenStopped = YES;
    return _activityIndicator;
}
- (UILabel *)titleLabel {
    if (_titleLabel) return _titleLabel;
    _titleLabel                 = [UILabel new];
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _titleLabel.font            = [UIFont boldSystemFontOfSize:20.f];
    _titleLabel.textColor       = [UIColor colorWithRed:0.100f green:0.100f blue:0.100f alpha:0.800f];
    _titleLabel.backgroundColor = [UIColor clearColor];
    _titleLabel.textAlignment   = NSTextAlignmentCenter;
    _titleLabel.numberOfLines   = 1;
    _titleLabel.lineBreakMode   = NSLineBreakByTruncatingTail;
    [_titleLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [_titleLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    return _titleLabel;
}
@end
