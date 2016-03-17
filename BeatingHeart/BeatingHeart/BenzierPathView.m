//
//  BenzierPathView.m
//  VertiacalLable
//
//  Created by Zhayong on 3/16/16.
//  Copyright © 2016 Zha Yong. All rights reserved.
//

#import "BenzierPathView.h"

@implementation BenzierPathView

- (void)drawSecondBezierPath {
    
    CGPoint starPoint = CGPointMake(self.frame.size.width / 2 ,200);
    CGPoint endPoint = CGPointMake(self.frame.size.width / 2,360 );
    CGFloat C1Y = 80 + 20;
    CGFloat C2Y = 280;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    // 首先设置一个起始点
    [path moveToPoint:starPoint];
    
    // 添加三次曲线
    [path addCurveToPoint:endPoint controlPoint1:CGPointMake(self.frame.size.width - 50, C1Y)controlPoint2:CGPointMake(self.frame.size.width - 50, C2Y)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path fill];
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    // 首先设置一个起始点
    [path2 moveToPoint:starPoint];
    
    // 添加三次曲线
    [path2 addCurveToPoint:endPoint controlPoint1:CGPointMake(50, C1Y)controlPoint2:CGPointMake(50, C2Y)];
    
    path2.lineCapStyle = kCGLineCapRound;
    path2.lineJoinStyle = kCGLineJoinRound;
    path2.lineWidth = 5.0;
    
    UIColor *strokeColor2 = [UIColor redColor];
    [strokeColor2 set];
    
     [path2 fill];
}

-(void)drawRect:(CGRect)rect{
    [self drawSecondBezierPath];
}

@end
