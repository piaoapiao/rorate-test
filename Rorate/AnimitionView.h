//
//  AnimitionView.h
//  Rorate
//
//  Created by wgdadmin on 12-9-6.
//  Copyright (c) 2012年 wgdadmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimitionView : UIView
{
    NSTimer             *timer;
    NSMutableArray      *imageArray;
    UIImageView         *animitionView;
    UIImage             *lastImage;
    NSTimer             *endTimer;
    int                 animitationTimeNumber;
    UILabel             *tipLable;
    UIButton            *cancelBtn;
}
@property (nonatomic,retain)  NSTimer           *timer;
@property (nonatomic,retain)  NSMutableArray    *imageArray;
@property (nonatomic,retain)  UIImageView       *animitionView;
@property (nonatomic,retain)  UIImage           *lastImage;
@property (nonatomic,retain)  NSTimer           *endTimer;
@property (nonatomic,retain)  UILabel           *tipLable;
@property (nonatomic,retain)  UIButton          *cancelBtn;

-(void)beginAnimitation:(int)time inView:(UIView *)backView;
-(void)endAnimitation;
@end
