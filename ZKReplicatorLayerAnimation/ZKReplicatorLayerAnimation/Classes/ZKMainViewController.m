//
//  ZKMainViewController.m
//  ZKReplicatorLayerAnimation
//
//  Created by ZK on 16/5/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "ZKMainViewController.h"
#import "ZKReplicatorAnimation.h"

@interface ZKMainViewController ()

@end

@implementation ZKMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupAnimation];
}

- (void)setupAnimation
{
    NSArray *subLayers = @[
                           [ZKReplicatorAnimation replicatorLayer_Circle],
                           [ZKReplicatorAnimation replicatorLayer_Wave],
                           [ZKReplicatorAnimation replicatorLayer_Grid],
                           [ZKReplicatorAnimation replicatorLayer_Triangle]
                           ];
    CGFloat radius = [UIScreen mainScreen].bounds.size.width * 0.5;
    for (NSInteger i = 0; i < subLayers.count; i ++) {
        NSInteger col = i % 2;
        NSInteger row = i / 2;
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(radius*col, radius*row, radius, radius)];
        view.backgroundColor = [UIColor yellowColor];
        [view.layer addSublayer:subLayers[i]];
        
        [self.view addSubview:view];
    }
}

@end
