//
//  UIColor+AppTheme.h
//  DValleyNew
//
//  Created by Juherongyun on 2020/3/13.
//  Copyright © 2020 ZTYJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (AppTheme)
/**
   背景--- 1～2级
*/
+ (UIColor *)mainBackgroundColor;

+ (UIColor *)secondBackgroundColor;

+ (UIColor *)thirdBackgroundColor;

/**
    文字--- 1～4级
 */
+ (UIColor *)darkTitleColor;

+ (UIColor *)mainTextColor;

+ (UIColor *)subTextColor;

+ (UIColor *)thirdTextColor;


/**
   导航条背景--- 1～2级
*/
+ (UIColor *)mainNavigationBarBackgroundColor;

+ (UIColor *)secondNavigationBarBackgroundColor;


/**
   导航条Tint--- 1～2级
*/
+ (UIColor *)mainNavigationBarTintColor;

+ (UIColor *)secondNavigationBarTintColor;


/**
   分割条--- 粗/细
*/
+ (UIColor *)sectionHeaderColor;

+ (UIColor *)separatorLineColor;



/**
    Button--- 背景/Tint + Enable/Unable
 */
+ (UIColor *)buttonEnableBackgroundColor;

+ (UIColor *)buttonUnableBackgroundColor;

+ (UIColor *)buttonEnableTintColor;

+ (UIColor *)buttonUnableTintColor;


/**
    Tabbar  选中色
 */
+ (UIColor *)tabbarSelectedColor;

/**
    链接色
 */
+ (UIColor *)customerLinkColor;

/**
    蒙板色值
 */
+ (UIColor *)customerMaskColor;

///特别色值
/**
    徽章色值
 */
+ (UIColor *)badgeColor;

@end

NS_ASSUME_NONNULL_END
