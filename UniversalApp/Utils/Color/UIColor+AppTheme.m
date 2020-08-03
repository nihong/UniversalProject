//
//  UIColor+AppTheme.m
//  DValleyNew
//
//  Created by Juherongyun on 2020/3/13.
//  Copyright © 2020 ZTYJ. All rights reserved.
//

#import "UIColor+AppTheme.h"


@implementation UIColor (AppTheme)

+ (UIColor *)mainBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainBackgroundColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)secondBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondBackgroundColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)thirdBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"sectionHeaderColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)mainNavigationBarBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainNavigationBarBackgroundColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)secondNavigationBarBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondNavigationBarBackgroundColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)mainNavigationBarTintColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainNavigationBarTintColor"];
    } else {
        return HEXCOLOR(0x020202);
    }
}

+ (UIColor *)secondNavigationBarTintColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"secondNavigationBarTintColor"];
    } else {
        return HEXCOLOR(0xffffff);
    }
}

+ (UIColor *)sectionHeaderColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"sectionHeaderColor"];
    } else {
        return HEXCOLOR(0xf6f6f6);
    }
}

+ (UIColor *)separatorLineColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"separatorLineColor"];
    } else {
        return HEXCOLOR(0xe6e6e6);
    }
}

+ (UIColor *)darkTitleColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"darkTitleColor"];
    } else {
        return HEXCOLOR(0x020202);
    }
}

+ (UIColor *)mainTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"mainTextColor"];
    } else {
        return HEXCOLOR(0x333333);
    }
}

+ (UIColor *)subTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"subTextColor"];
    } else {
        return HEXCOLOR(0x666666);
    }
}

+ (UIColor *)thirdTextColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"thirdTextColor"];
    } else {
        return HEXCOLOR(0x999999);
    }
}

+ (UIColor *)tabbarSelectedColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"tabbarSelectedColor"];
    } else {
        return HEXCOLOR(0xEA7447);
    }
}

+ (UIColor *)buttonEnableBackgroundColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"buttonEnableBackgroundColor"];
    } else {
        return HEXCOLOR(0xEA7447);
    }
}

+ (UIColor *)buttonUnableBackgroundColor;
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"buttonUnableBackgroundColor"];
    } else {
        return HEXCOLOR(0xD4D4D4);
    }
}

+ (UIColor *)buttonEnableTintColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)buttonUnableTintColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)customerLinkColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"customerLinkColor"];
    } else {
        return HEXCOLOR(0x005DFF);
    }
}

+ (UIColor *)customerMaskColor
{
    if (@available(iOS 11.0, *)) {
        return [UIColor colorNamed:@"customerMaskColor"];
    } else {
        return UIColorHexRGB(0x000000,0.5f);
    }
}

+ (UIColor *)badgeColor
{
    return [UIColor redColor];
}
@end
