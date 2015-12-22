//
//  ViewController.m
//  Created by IOS Developer on 15/12/22.
//  Copyright © 2015年 Shaun. All rights reserved.
//

#import "ViewController.h"
#import "XAdScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XAdScrollView * scrollView = [[XAdScrollView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 150)];
    
    scrollView.ImageURLArray=@[@"http://imglf1.nosdn.127.net/img/VUgvSEgzZ3g2VGxRVWI4TndweHg5dzA4MVcyanBrOHNhS29XRFZnOFhSWlh0L1c0RnVrL1dRPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg"
                         ,
                          @"http://imglf2.nosdn.127.net/img/YmFiRDZlUDV0UE85NjZHZmt3L2lRKyt5bU1vM2xBRmtEY2pPZVFWZ1phT2RDMTY2SGRQNkZnPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg",
                          @"http://imglf0.nosdn.127.net/img/dDJkNlFuZzdmb0Z5MmQ0OWNHL2VnZzc3R1pqVUdNUzNSdEVPeU50Rm5oWTJXMHRFc3FXeVpBPT0.jpg?imageView&thumbnail=500x0&quality=96&stripmeta=0&type=jpg"
    ,@"http://imglf.nosdn.127.net/img/WFJpUGZIL0RJTGVLNWpna2l5d3RZdUVEMjBZdXRBbUI0eHJ3elowckpzWT0.jpg?imageView&thumbnail=1680x0&quality=96&stripmeta=0&type=jpg"];
    
    scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor purpleColor];
    [self.view addSubview:scrollView];
}

@end
