//
//  AnimitionView.m
//  Rorate
//
//  Created by wgdadmin on 12-9-6.
//  Copyright (c) 2012年 wgdadmin. All rights reserved.
//

#import "AnimitionView.h"
#define kImageNumber 8

@implementation AnimitionView

-(void)dealloc
{
    [animitionView release];
    [imageArray release];
    [tipLable release];
    [cancelBtn release];
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
   
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
     //   self.userInteractionEnabled = YES;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(NSMutableArray *)imageArray
{
    if(nil == imageArray)
    {
        imageArray = [[NSMutableArray alloc] init];
        for(int i= 1;i<9;i++)
        {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]] ;
            [imageArray addObject:image];
        }
    }
    return imageArray;
}

-(void)replaceImage
{
    static int i = 0;
    animitionView.image = [self.imageArray objectAtIndex:i];
     if(kImageNumber  == i +1)
     {
            [self.timer invalidate];
             [UIView animateWithDuration:1 delay:0 options:0 animations:^(){
         
               animitionView.transform = CGAffineTransformMakeRotation(0);
        
               animitionView.transform = CGAffineTransformMakeRotation(M_PI);         
 
         
             } completion:^(BOOL finished)
             {
                 NSLog(@"finish");
                 animitionView.transform = CGAffineTransformMakeRotation(0);
                 self.timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(replaceImage) userInfo:nil repeats:YES];
             }];        

         i = 0;
     }
    i++;
      
}

-(void)beginAnimitation:(int)time inView:(UIView *)backView;
{
   [backView addSubview:self];
    self.animitionView.frame = CGRectMake(100, 180, 100, 100);
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(replaceImage) userInfo:nil repeats:YES];
    
    self.endTimer = [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(endAnimitation) userInfo:nil repeats:NO];
}

-(void)endAnimitation
{
    [self.timer invalidate];
    [self.endTimer invalidate];
    [self removeFromSuperview];
}

#pragma mark UIControls

-(UIImageView *)animitionView
{
    if(nil == animitionView)
    {
        animitionView = [[UIImageView alloc] init];
        [self addSubview:animitionView];
    }
    return animitionView;
}

-(UILabel *)tipLable
{
    if(nil == tipLable)
    {
        tipLable = [[UILabel alloc] init];
        tipLable.text = @"正在为你努力加载中";
        [self addSubview:tipLable];
    }
    return tipLable;
}

-(UIButton *)cancelBtn
{
    if(nil == cancelBtn)
    {
        cancelBtn = [[UIButton alloc] init];
        [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        [cancelBtn setBackgroundColor:[UIColor redColor]];
        [cancelBtn addTarget:self action:@selector(endAnimitation) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:cancelBtn];
    }
    return cancelBtn;
}

-(void)layoutSubviews
{
    self.frame = CGRectMake(0, 0, 320, 480);
    self.animitionView.frame = CGRectMake(100, 180, 100, 100);
    self.tipLable.frame = CGRectMake(80, 150, 140, 25);
    self.cancelBtn.frame = CGRectMake(130, 290, 40, 25);  
}


@end
