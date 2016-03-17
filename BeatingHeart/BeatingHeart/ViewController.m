//
//  ViewController.m
//  BeatingHeart
//
//  Created by Zhayong on 3/17/16.
//  Copyright © 2016 Zha Yong. All rights reserved.
//

#import "ViewController.h"
#import "BenzierPathView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)initScaleLayer
{
    
    BenzierPathView *benzierView = [[BenzierPathView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:benzierView];
    
    
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1];
    scaleAnimation.toValue = [NSNumber numberWithFloat:1.5];
    scaleAnimation.autoreverses = YES;
    scaleAnimation.fillMode = kCAFillModeForwards;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = 0.6;
    
    [benzierView.layer addAnimation:scaleAnimation forKey:@"scaleAnimation"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initScaleLayer];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
