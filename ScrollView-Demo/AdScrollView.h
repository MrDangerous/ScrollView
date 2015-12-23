//
//  SHeadViewForDirectory.m
//  广告循环滚动效果
//
//  Created by IOS Developer on 15/12/16.
//  Copyright © 2015年 Xiao_Yan. All rights reserved.
//
/**
 *  https://github.com/ixiao/XAdScrollView
 */

#import <UIKit/UIKit.h>
//点击图片的Block回调，参数当前图片的索引，也就是当前页数
typedef void(^TapImageViewButtonBlock)(NSInteger imageIndex);

#define UISCREENWIDTH  self.bounds.size.width//广告的宽度
#define UISCREENHEIGHT  self.bounds.size.height//广告的高度

@protocol XScrollerViewDelegate <NSObject>
@optional
- (void)EXScrollerViewDidClicked:(NSUInteger)index;
@end

typedef NS_ENUM(NSUInteger, UIPageControlShowStyle)
{
    UIPageControlShowStyleNone,//default
    UIPageControlShowStyleLeft,
    UIPageControlShowStyleCenter,
    UIPageControlShowStyleRight,
};

typedef NS_ENUM(NSUInteger, AdTitleShowStyle)
{
    AdTitleShowStyleNone,
    AdTitleShowStyleLeft,
    AdTitleShowStyleCenter,
    AdTitleShowStyleRight,
};

@interface AdScrollView : UIView<UIScrollViewDelegate>

@property (strong,nonatomic)            UIScrollView * myScrollView;
@property (retain,nonatomic,readonly)   UIPageControl * pageControl;
@property (retain,nonatomic,readwrite)  NSArray     * ImageURLArray;
@property (retain,nonatomic,readonly)   NSArray     * adTitleArray;
@property (assign,nonatomic,readwrite) UIPageControlShowStyle  PageControlShowStyle;
@property (assign,nonatomic,readonly) AdTitleShowStyle  adTitleStyle;
@property (retain,nonatomic)id<XScrollerViewDelegate>delegate;
@property (nonatomic, strong) TapImageViewButtonBlock block;

- (void)setAdTitleArray:(NSArray *)adTitleArray withShowStyle:(AdTitleShowStyle)adTitleStyle;
/**********************************
 *功能：为每个图片添加点击时间
 *参数：点击按钮要执行的Block
 *返回值：无
 **********************************/
- (void) addTapEventForImageWithBlock: (TapImageViewButtonBlock) block;
@end


