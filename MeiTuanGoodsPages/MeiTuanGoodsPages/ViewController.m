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
    
    CGFloat imageH=self.imageV.bounds.size.height;
    
    CGFloat offsetY=scrollView.contentOffset.y;
    
    
}

@end
