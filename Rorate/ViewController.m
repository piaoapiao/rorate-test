//
//  ViewController.m
//  Rorate
//
//  Created by wgdadmin on 12-9-5.
//  Copyright (c) 2012年 wgdadmin. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "AnimitionView.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)press
{
    NSLog(@"press");
    AnimitionView *imageView = [[AnimitionView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [imageView beginAnimitation:20 inView:self.view];
    [imageView release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *test = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 20)];
    [test setTitle:@"test" forState:UIControlStateNormal];
    [test addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:test];
    [test release];
    AnimitionView *imageView = [[AnimitionView alloc] init];
    [imageView beginAnimitation:20 inView:self.view];
    [imageView release];
    
//    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(100,100, 100, 100)];
//    [iv setImage:[UIImage imageNamed:@"tc_wheel.png"]];
//    [self.view addSubview:iv];
//    
//    //        //CALayer *rotate_layer = iv.layer;
//    //        [self.view addSubview:iv];
//    //        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
//    //        animation.delegate = self;
//    //        animation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI/2 , 0, 0, 1.0)];
//    //        animation.duration = 1;
//    //        animation.cumulative = YES;
//    //         animation.repeatCount = INT_MAX;
//    //       // animation.repeatCount = 1;
//    
//    [UIView animateWithDuration:3 delay:0 options:0 animations:^(){
//
//        iv.alpha = 0.0;
//        iv.alpha = 1.0;
//        
//        iv.frame = CGRectMake(200, 200, 100, 100);
//        
//        iv.frame = CGRectMake(0, 50, 100, 100);
//        
////        iv.center = CGPointMake(10, 10);
////        iv.center = CGPointMake(200, 250);
//        
////        iv.transform = CGAffineTransformMakeRotation(0);
////        
////        iv.transform = CGAffineTransformMakeRotation(M_PI/2);
//        
////        iv.transform = CGAffineTransformMakeScale(1, 1);
////
////        iv.transform = CGAffineTransformMakeScale(0.5, 5);
//
////        iv.transform = CGAffineTransformMakeTranslation(0.5, 0.5);
////        
////        iv.transform = CGAffineTransformMakeTranslation(100, 100);
//
//        
////        iv.backgroundColor = [UIColor whiteColor];
////        iv.backgroundColor = [UIColor greenColor];
//
//    } completion:^(BOOL finished)
//    {
//        NSLog(@"come");
//    }];
    
    
 
  //  [iv.layer addAnimation:animation forKey:@"animation"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    


    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
