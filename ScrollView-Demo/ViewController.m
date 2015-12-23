//
//  ViewController.m
//  ScrollView-Demo
//
//  Created by IOS Developer on 15/12/23.
//  Copyright © 2015年 Shaun. All rights reserved.
//

#import "ViewController.h"
#import "AdScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   AdScrollView *  scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 200)];

    scrollView.ImageURLArray = @[@"http://imglf1.nosdn.127.net/img/VUgvSEgzZ3g2VGxRVWI4TndweHg5dzA4MVcyanBrOHNhS29XRFZnOFhSWlh0L1c0RnVrL1dRPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg"
                                 ,
                                 @"http://imglf2.nosdn.127.net/img/YmFiRDZlUDV0UE85NjZHZmt3L2lRKyt5bU1vM2xBRmtEY2pPZVFWZ1phT2RDMTY2SGRQNkZnPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg",
                                 @"http://imglf0.nosdn.127.net/img/dDJkNlFuZzdmb0Z5MmQ0OWNHL2VnZzc3R1pqVUdNUzNSdEVPeU50Rm5oWTJXMHRFc3FXeVpBPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg"
                                 ,@"http://imglf0.nosdn.127.net/img/NjlOU0JDQmFmL1ZRK2V2b0FUYnF6L0x2UkVWWTBqOHZkVG5Lb1ZZaVlPM0V1OGU4NDZPMmRBPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg"];
#warning 在这里获取点击动作
    [scrollView addTapEventForImageWithBlock:^(NSInteger imageIndex) {
        NSLog(@"SSSSS%ld",imageIndex);
    }];
//    [scrollView setAdTitleArray:@[@"你到底给不给我喝乳酸菌",@"单身🐶",@"只羡鸳鸯不羡仙",@"山色空蒙雨亦奇"] withShowStyle:AdTitleShowStyleRight];
    scrollView.PageControlShowStyle                         = UIPageControlShowStyleRight;
    scrollView.pageControl.pageIndicatorTintColor           = [UIColor whiteColor];
    scrollView.pageControl.currentPageIndicatorTintColor    = [UIColor greenColor];
    
    [self.view addSubview:scrollView];
}



@end
