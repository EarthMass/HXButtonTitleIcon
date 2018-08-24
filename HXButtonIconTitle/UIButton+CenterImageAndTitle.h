//
//  UIButton+UIButtonSetEdgeInsets.h
//  UIButtonSetEdgeInsets
//
//  Created by Qi Wang on 11/14/14.
//  Copyright (c) 2014 qiwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CenterImageAndTitle)

//上下居中，图片在上，文字在下
- (void)verticalCenterImageAndTitle:(CGFloat)spacing;
- (void)verticalCenterImageAndTitle; //默认6.0

//左右居中，文字在左，图片在右
- (void)horizontalCenterTitleAndImage:(CGFloat)spacing;
- (void)horizontalCenterTitleAndImage; //默认6.0

//左右居中，图片在左，文字在右
- (void)horizontalCenterImageAndTitle:(CGFloat)spacing;
- (void)horizontalCenterImageAndTitle; //默认6.0

//文字居中，图片在左边
- (void)horizontalCenterTitleAndImageLeft:(CGFloat)spacing;
- (void)horizontalCenterTitleAndImageLeft; //默认6.0

//文字居中，图片在右边
- (void)horizontalCenterTitleAndImageRight:(CGFloat)spacing;
- (void)horizontalCenterTitleAndImageRight; //默认6.0

//图左边， 字右 图左距 固定
- (void)horizontalImageAndTitleFixedIcon:(CGFloat)spacing imageEdgeSpace:(CGFloat)edgeSpace;
//图右边， 字左 图右距 固定
- (void)horizontalTitleAndImageFixedIcon:(CGFloat)spacing imageEdgeSpace:(CGFloat)edgeSpace;

//图右边， 字中 图右距 固定
- (void)horizontalTitleCenterAndImageFixedRight:(CGFloat)edgeSpace;

//图左边， 字中 图右距 固定
- (void)horizontalTitleCenterAndImageFixedLeft:(CGFloat)edgeSpace;
@end
