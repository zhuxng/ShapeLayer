//
//  ViewController.m
//  ShapeLayer
//
//  Created by 朱星 on 16/9/18.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIBezierPath *bp = [UIBezierPath bezierPath];
    //头
    [bp moveToPoint:CGPointMake(175, 100)];
    [bp addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
//    颈部
    [bp moveToPoint:CGPointMake(150, 125)];
    [bp addLineToPoint:CGPointMake(150, 175)];
    //左脚
    [bp addLineToPoint:CGPointMake(125, 225)];
    //右脚
    [bp moveToPoint:CGPointMake(150, 175)];
    [bp addLineToPoint:CGPointMake(175, 225)];
    
    
    [bp moveToPoint:CGPointMake(100, 150)];
    [bp addLineToPoint:CGPointMake(200, 150)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 5;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineJoinRound;
    shapeLayer.path = bp.CGPath;
    [self.view.layer addSublayer:shapeLayer];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
