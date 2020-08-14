//
//  UIColor+AppTheme.m
//  DValleyNew
//
//  Created by Juherongyun on 2020/3/13.
//  Copyright © 2020 ZTYJ. All rights reserved.
//

#import "UIColor+AppTheme.h"

#define UIColorHexRGB(rgbValue ,a)  [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

#define HEXCOLOR(rgbValue)          [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]  //十六进制颜色

@implementation UIColor (AppTheme)

+ (UIColor *)rg_mainBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainBackgroundColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)rg_secondBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondBackgroundColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)rg_thirdBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"sectionHeaderColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)rg_mainNavigationBarBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainNavigationBarBackgroundColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)rg_secondNavigationBarBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondNavigationBarBackgroundColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)rg_mainNavigationBarTintColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainNavigationBarTintColor"];
    } else {
        return HEXCOLOR(0x020202);
    }
}

+ (UIColor *)rg_secondNavigationBarTintColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondNavigationBarTintColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)rg_sectionHeaderColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"sectionHeaderColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)rg_separatorLineColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"separatorLineColor"];
    } else {
        return HEXCOLOR(0xe6e6e6);
    }
}

+ (UIColor *)rg_darkTitleColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"darkTitleColor"];
    } else {
        return HEXCOLOR(0x020202);
    }
}

+ (UIColor *)rg_mainTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainTextColor"];
    } else {
        return HEXCOLOR(0x333333);
    }
}

+ (UIColor *)rg_subTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"subTextColor"];
    } else {
        return HEXCOLOR(0x666666);
    }
}

+ (UIColor *)rg_thirdTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"thirdTextColor"];
    } else {
        return HEXCOLOR(0x999999);
    }
}

+ (UIColor *)rg_tabbarSelectedColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"tabbarSelectedColor"];
    } else {
        return HEXCOLOR(0xEA7447);
    }
}

+ (UIColor *)rg_buttonEnableBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"buttonEnableBackgroundColor"];
    } else {
        return HEXCOLOR(0xEA7447);
    }
}

+ (UIColor *)rg_buttonUnableBackgroundColor;
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"buttonUnableBackgroundColor"];
    } else {
        return HEXCOLOR(0xD4D4D4);
    }
}

+ (UIColor *)rg_buttonEnableTintColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)rg_buttonUnableTintColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)rg_customerLinkColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"customerLinkColor"];
    } else {
        return HEXCOLOR(0x005DFF);
    }
}

+ (UIColor *)rg_customerMaskColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"customerMaskColor"];
    } else {
        return UIColorHexRGB(0x000000,0.5f);
    }
}

+ (UIColor *)rg_badgeColor
{
    return [UIColor redColor];
}

+ (UIColor *)rg_progessColor
{
    return UIColorHex(0x0485d1);
}

+ (UIColor *)rg_mainThemeColor
{
    return UIColorHex(0x00AE68);
}
@end
