//
//  ViewController.m
//  基本动画
//
//  Created by niuwan on 16/8/6.
//  Copyright © 2016年 niuwan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    //创建动画
    CABasicAnimation *anim = [CABasicAnimation animation];
    
    //设置动画的属性
//    anim.keyPath = @"position";
    
    anim.keyPath = @"transform.scale";
    
    //设置值
//    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(250, 500)];
    anim.toValue = @0.5;
    
    //设置动画执行的次数
    anim.repeatCount = MAXFLOAT;
    
    //设置重复执行时间
    anim.repeatDuration = 1;
    
    //设置动画执行的时间
//    anim.duration = 1;
    
    //设置动画完成的时候不移除
    anim.removedOnCompletion = NO;
    
    //动画执行完成的时候保持最新的效果
    anim.fillMode = kCAFillModeForwards;
    
//    [_redView.layer addAnimation:anim forKey:nil];
    [_imageV.layer addAnimation:anim forKey:nil];
    
}

@end
