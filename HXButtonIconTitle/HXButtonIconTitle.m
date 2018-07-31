//
//  HXButtonIconTitle.m
//  UIButtonCenterTitleAndImage
//
//  Created by 郭海祥 on 2017/10/27.
//  Copyright © 2017年 qiwang. All rights reserved.
//

#import "HXButtonIconTitle.h"

@implementation HXButtonIconTitle

- (void)buttonIconTitleWithTitle:(NSString *)title
                            font:(UIFont *)font
                            icon:(UIImage *)icon
                        iconSize:(CGSize)iconSize
                       alignment:(HXButtonIconTitleAlignment)alignment
                           space:(CGFloat)space
             scaleImageIfSmaller:(BOOL)scaleImageIfSmaller {
    
    

    if (font) {
        self.titleLabel.font = font;
    }
    [self setTitle:title forState:UIControlStateNormal];
    
    //任意图片 设置大小
    UIImage * imageWithCustomSize = [icon resizedImageToFitInSize:iconSize scaleIfSmaller:scaleImageIfSmaller];
    
    self.imageView.image = imageWithCustomSize;
    //按钮必须这么设置 图片
//  [self setImage:[imageWithCustomSize imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
  [self setImage:imageWithCustomSize forState:UIControlStateNormal];
    
    //最好设置 区域外不显示 （会出现超出，不明显的不好调整）
    self.clipsToBounds = YES;
    
    switch (alignment)
    {
        case 0: //图左字右
        {
            //系统默认图片在左，文字在右，间隔为0
            [self horizontalCenterImageAndTitle:space];
        }
            break;
            
        case 1: //图左字右
        {
            [self horizontalCenterImageAndTitle:space];
            
        }
            break;
            
        case 2: //图右字左
        {

            [self horizontalCenterTitleAndImage:space];
        }
            break;
            
        case 3: //图上字下
        {
            [self verticalCenterImageAndTitle:space];
        }
            break;
            
        case 4: //字中 图 左
        {
           
            [self horizontalCenterTitleAndImageLeft:space];
            
        }
            break;
            
        case 5: //字中 图 右
        {
            [self horizontalCenterTitleAndImageRight:space];
        }
            break;
        case HXButtonAlignmentIconFixedLeft: //图左 字右 图片边距固定
        {
             [self horizontalImageAndTitleFixedIcon:space imageEdgeSpace:10];
        }
            break;
        case HXButtonAlignmentIconFixedRight: //图右 字左 图片边距固定
        {
            [self horizontalTitleAndImageFixedIcon:space imageEdgeSpace:10];
           
        }
            break;
            
            
        default:
            break;
    }
    
}

- (void)buttonIconTitleWithTitle:(NSString *)title
                            font:(UIFont *)font
                            icon:(UIImage *)icon
                        iconSize:(CGSize)iconSize //图片不会变形
                       alignment:(HXButtonIconTitleAlignment)alignment
                           space:(CGFloat)space
                            edge:(CGFloat)edge
             scaleImageIfSmaller:(BOOL)scaleImageIfSmaller {
    if (font) {
        self.titleLabel.font = font;
    }
    [self setTitle:title forState:UIControlStateNormal];
    
    //任意图片 设置大小
    UIImage * imageWithCustomSize = [icon resizedImageToFitInSize:iconSize scaleIfSmaller:scaleImageIfSmaller];
    
    self.imageView.image = imageWithCustomSize;
    //按钮必须这么设置 图片
    //  [self setImage:[imageWithCustomSize imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
    [self setImage:imageWithCustomSize forState:UIControlStateNormal];
    
    //最好设置 区域外不显示 （会出现超出，不明显的不好调整）
    self.clipsToBounds = YES;
    
    switch (alignment)
    {
        case 0: //图左字右
        {
            //系统默认图片在左，文字在右，间隔为0
            [self horizontalCenterImageAndTitle:space];
        }
            break;
            
        case 1: //图左字右
        {
            [self horizontalCenterImageAndTitle:space];
            
        }
            break;
            
        case 2: //图右字左
        {
            
            [self horizontalCenterTitleAndImage:space];
        }
            break;
            
        case 3: //图上字下
        {
            [self verticalCenterImageAndTitle:space];
        }
            break;
            
        case 4: //字中 图 左
        {
            
            [self horizontalCenterTitleAndImageLeft:space];
            
        }
            break;
            
        case 5: //字中 图 右
        {
            [self horizontalCenterTitleAndImageRight:space];
        }
            break;
        case HXButtonAlignmentIconFixedLeft: //图左 字右 图片边距固定
        {
            [self horizontalImageAndTitleFixedIcon:space imageEdgeSpace:edge];
        }
            break;
        case HXButtonAlignmentIconFixedRight: //图右 字左 图片边距固定
        {
            [self horizontalTitleAndImageFixedIcon:space imageEdgeSpace:edge];
            
        }
            break;
            
            
        default:
            break;
    }
    
}
@end
