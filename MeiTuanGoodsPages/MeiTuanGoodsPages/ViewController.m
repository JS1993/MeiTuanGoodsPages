//
//  ViewController.m
//  MeiTuanGoodsPages
//
//  Created by  江苏 on 16/5/5.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollV;
@property (strong, nonatomic) IBOutlet UIImageView *imageV;
@property (strong, nonatomic) IBOutlet UIView *headerV;

@property (strong, nonatomic) IBOutlet UIView *contentV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollV.contentSize=CGSizeMake([UIScreen mainScreen].bounds.size.width, CGRectGetMaxY(self.contentV.frame));
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGFloat imageH=self.imageV.frame.size.height;
    
    CGFloat offsetY=scrollView.contentOffset.y;
    
    if (offsetY>imageH-64) {
       
        CGRect frame=self.headerV.frame;
        
        frame.origin.y=64;
        
        self.headerV.frame=frame;
        
        [self.view addSubview:self.headerV];
        
    }else{
        
        CGRect frame=self.headerV.frame;
        
        frame.origin.y=173;
        
        self.headerV.frame=frame;
        
        [self.scrollV addSubview:self.headerV];
    }
    
    
    CGFloat scale=offsetY>-64?1:1-offsetY/70;
    
    self.imageV.transform=CGAffineTransformMakeScale(scale, scale);
    
}

@end
