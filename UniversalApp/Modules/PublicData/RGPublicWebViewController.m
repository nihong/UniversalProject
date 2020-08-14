//
//  RGPublicWebViewController.m
//  UniversalApp
//
//  Created by RoyGao-MBP16 on 2020/8/4.
//  Copyright © 2020 徐阳. All rights reserved.
//

#import "RGPublicWebViewController.h"
#import "UIViewController+AlertViewAndActionSheet.h"
#import "RGWebModel.h"

@interface RGPublicWebViewController ()<UIScrollViewDelegate>

@end

@implementation RGPublicWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.StatusBarStyle = UIStatusBarStyleDefault;
    
    self.isShowCloseBtn = YES;
    
    //[self.navigationController setHidesBarsWhenVerticallyCompact:YES];
    self.navigationController.hidesBarsOnSwipe = YES;
    
    [self addNavigationItemWithTitles:@[@"+"] isLeft:NO target:self action:@selector(addNewWeblink) tags:nil];
}

- (void)addNewWeblink
{
    NSString *message = [NSString stringWithFormat:@"%@\n%@",self.webView.title,self.webView.URL.absoluteString];
    [self AlertWithTitle:@"添加新网址" message:message andOthers:@[@"取消",@"确定"] animated:YES action:^(NSInteger index) {
        if (index == 0) {
            
        }else if (index == 1){
            RGWebModel * model = [[RGWebModel alloc]init];
            model.title = self.webView.title;
            model.weblink = self.webView.URL.absoluteString;
            
            [RGWebModel saveWebModelToLocal:model];
        }
    }];
}
@end
