//
//  HXButtonIconTitle.h
//  UIButtonCenterTitleAndImage
//
//  Created by 郭海祥 on 2017/10/27.
//  Copyright © 2017年 qiwang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+CenterImageAndTitle.h"
#import "UIImage+Resize.h"

typedef enum {
    HXButtonAlignmentDefault = 0, //图片在左，文字在右，间隔为0
    HXButtonAlignmentIconLeft,
    HXButtonAlignmentIconRight,
    HXButtonAlignmentIconTop,
    HXButtonAlignmentTitleCenterIconLeft,
    HXButtonAlignmentTitleCenterIconRight,
    HXButtonAlignmentIconFixedLeft,  //固定边距的 默认10
    HXButtonAlignmentIconFixedRight, //固定边距的 默认10
    HXButtonAlignmentTitleCenterIconFixedRight, //图标固定边距的 文字居中
    HXButtonAlignmentTitleCenterIconFixedLeft, //图标固定边距的 文字居中
}HXButtonIconTitleAlignment;

@interface HXButtonIconTitle : UIButton

- (void)buttonIconTitleWithTitle:(NSString *)title
                            font:(UIFont *)font
                            icon:(UIImage *)icon
                        iconSize:(CGSize)iconSize //图片不会变形
                       alignment:(HXButtonIconTitleAlignment)alignment
                           space:(CGFloat)space
             scaleImageIfSmaller:(BOOL)scaleImageIfSmaller;

- (void)buttonIconTitleWithTitle:(NSString *)title
                            font:(UIFont *)font
                            icon:(UIImage *)icon
                        iconSize:(CGSize)iconSize //图片不会变形
                       alignment:(HXButtonIconTitleAlignment)alignment
                           space:(CGFloat)space
                            edge:(CGFloat)edge
             scaleImageIfSmaller:(BOOL)scaleImageIfSmaller;

@end
