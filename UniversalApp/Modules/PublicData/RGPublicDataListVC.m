//
//  RGPublicDataListVC.m
//  UniversalApp
//
//  Created by RoyGao-MBP16 on 2020/8/4.
//  Copyright © 2020 徐阳. All rights reserved.
//

#import "RGPublicDataListVC.h"
#import "RGPublicWebViewController.h"
#import "RGWebModel.h"

static NSString * const kRGPublicDataListVCCellID = @"kRGPublicDataListVCCellID";

@interface RGPublicDataListVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)NSMutableArray <RGWebModel *> *weblistArray;

@end

@implementation RGPublicDataListVC

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.weblistArray = [NSMutableArray arrayWithArray:[RGWebModel webModelArray]];
        
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.mj_header.hidden = YES;
    self.tableView.mj_footer.hidden = YES;
    
    [self configEditButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.weblistArray = [NSMutableArray arrayWithArray:[RGWebModel webModelArray]];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.weblistArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kRGPublicDataListVCCellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kRGPublicDataListVCCellID];
    }
    RGWebModel *model = self.weblistArray[indexPath.row];
    cell.textLabel.text = model.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RGWebModel *model = self.weblistArray[indexPath.row];
    RGPublicWebViewController  *webVC = [[RGPublicWebViewController alloc]initWithUrl:model.weblink];
    webVC.title = model.title;
//    webVC.title = @"􀈑􀈌􀉦􀈔􀈏";
//    webVC.isHidenNaviBar = YES;
//    webVC.isShowLiftBack = YES;
    [self.navigationController pushViewController:webVC animated:YES];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewRowAction *deleteAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        //修改数据源，在刷新 tableView
        [self.weblistArray removeObjectAtIndex:indexPath.row];

        //让表视图删除对应的行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }];
    
    UITableViewRowAction *editAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"编辑" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        RGWebModel *webModel = [[RGWebModel alloc]initWithDic:@{
            @"title"  :@"random Data",
            @"weblink":@"http://www.cninfo.com.cn/new/index",
            @""       :@""
        }];
        [self.weblistArray insertObject:webModel atIndex:indexPath.row];
        //让表视图添加对应的行
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }];
    return @[deleteAction,editAction];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    //修改数据源
    [self.weblistArray exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
    //让表视图对应的行进行移动
    [tableView exchangeSubviewAtIndex:sourceIndexPath.row withSubviewAtIndex:destinationIndexPath.row];
}

- (void)configEditButton
{
    if (self.tableView.editing == NO) {
        [self addNavigationItemWithTitles:@[@"Edit"] isLeft:NO target:self action:@selector(editTableList) tags:nil];
    }else{
        [self addNavigationItemWithTitles:@[@"Done"] isLeft:NO target:self action:@selector(editTableListDone) tags:nil];
    }
}

- (void)editTableList
{
    [self.tableView setEditing:!self.tableView.isEditing animated:NO];
    [self configEditButton];
}

- (void)editTableListDone
{
    [self.tableView setEditing:!self.tableView.isEditing animated:NO];
    [self configEditButton];

    [RGWebModel saveWebModelArrayToLocal:self.weblistArray];
}
@end
