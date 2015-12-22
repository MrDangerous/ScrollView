//
//  SHeadViewForDirectory.m
//  广告循环滚动效果
//
//  Created by IOS Developer on 15/12/16.
//  Copyright © 2015年 Xiao_Yan. All rights reserved.
//

#import <UIKit/UIKit.h>

//点击图片的Block回调，参数当前图片的索引，也就是当前页数
typedef void(^TapImageViewButtonBlock)(NSInteger imageIndex);

#define UISCREENWIDTH  self.bounds.size.width//广告的宽度
#define UISCREENHEIGHT  self.bounds.size.height//广告的高度

typedef NS_ENUM(NSUInteger, AdTitleShowStyle)
{
    AdTitleShowStyleNone,
    AdTitleShowStyleLeft,
    AdTitleShowStyleCenter,
    AdTitleShowStyleRight,
};

@interface XAdScrollView : UIView<UIScrollViewDelegate>

@property (strong,nonatomic)          UIScrollView * myScrollView;
@property (retain,nonatomic,readonly) UIPageControl * pageControl;
@property (retain,nonatomic,readwrite) NSArray * ImageURLArray;
@property (retain,nonatomic,readonly) NSArray * adTitleArray;

@property (assign,nonatomic,readonly) AdTitleShowStyle  adTitleStyle;
@property (nonatomic, strong) TapImageViewButtonBlock block;

- (void)setAdTitleArray:(NSArray *)adTitleArray withShowStyle:(AdTitleShowStyle)adTitleStyle;
/**********************************
 *功能：为每个图片添加点击时间
 *参数：点击按钮要执行的Block
 *返回值：无
 **********************************/
- (void) addTapEventForImageWithBlock: (TapImageViewButtonBlock) block;
@end


