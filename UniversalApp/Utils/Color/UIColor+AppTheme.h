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
+ (UIColor *)rg_mainBackgroundColor;

+ (UIColor *)rg_secondBackgroundColor;

+ (UIColor *)rg_thirdBackgroundColor;

/**
    文字--- 1～4级
 */
+ (UIColor *)rg_darkTitleColor;

+ (UIColor *)rg_mainTextColor;

+ (UIColor *)rg_subTextColor;

+ (UIColor *)rg_thirdTextColor;


/**
   导航条背景--- 1～2级
*/
+ (UIColor *)rg_mainNavigationBarBackgroundColor;

+ (UIColor *)rg_secondNavigationBarBackgroundColor;


/**
   导航条Tint--- 1～2级
*/
+ (UIColor *)rg_mainNavigationBarTintColor;

+ (UIColor *)rg_secondNavigationBarTintColor;


/**
   分割条--- 粗/细
*/
+ (UIColor *)rg_sectionHeaderColor;

+ (UIColor *)rg_separatorLineColor;



/**
    Button--- 背景/Tint + Enable/Unable
 */
+ (UIColor *)rg_buttonEnableBackgroundColor;

+ (UIColor *)rg_buttonUnableBackgroundColor;

+ (UIColor *)rg_buttonEnableTintColor;

+ (UIColor *)rg_buttonUnableTintColor;


/**
    Tabbar  选中色
 */
+ (UIColor *)rg_tabbarSelectedColor;

/**
    链接色
 */
+ (UIColor *)rg_customerLinkColor;

/**
    蒙板色值
 */
+ (UIColor *)rg_customerMaskColor;


#pragma mark 特别色值

/**
    徽章色值
 */
+ (UIColor *)rg_badgeColor;

/**
    进度条色值
 */
+ (UIColor *)rg_progessColor;

/**
   主题色值
*/
+ (UIColor *)rg_mainThemeColor;

@end

NS_ASSUME_NONNULL_END
