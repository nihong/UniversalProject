//
//  RGWebModel.m
//  UniversalApp
//
//  Created by RoyGao-MBP16 on 2020/8/4.
//  Copyright © 2020 徐阳. All rights reserved.
//

#import "RGWebModel.h"

static NSString * const kRGWebModelsTextName = @"kRGWebModelsTextName";

@implementation RGWebModel

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.subtitle forKey:@"subtitle"];
    [aCoder encodeObject:self.weblink forKey:@"weblink"];
    [aCoder encodeObject:self.weblink forKey:@"iconName"];
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {

        self.title = [aDecoder decodeObjectForKey:@"title"];
        self.subtitle = [aDecoder decodeObjectForKey:@"subtitle"];
        self.weblink = [aDecoder decodeObjectForKey:@"weblink"];
        self.iconName = [aDecoder decodeObjectForKey:@"iconName"];
    }
    return self;
}

- (instancetype)initWithDic:(NSDictionary *)dic
{
    RGWebModel *model = [[RGWebModel alloc]init];
    model.title = dic[@"title"];
    model.weblink = dic[@"subtitle"];
    model.weblink = dic[@"iconName"];
    model.weblink = dic[@"weblink"];
    return model;
}

+ (NSArray <RGWebModel *>*)webModelArray
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];     
    //取出
    NSData *data = [user objectForKey:kRGWebModelsTextName];
    NSArray * webModelArr = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    if (webModelArr && webModelArr.count) {
        return webModelArr;
    }

    NSArray *dicArray = @[
        @{
            @"title"  :@"国家统计局",
            @"weblink":@"http://data.stats.gov.cn/",
            @"subtitle":@""
        },
        @{
            @"title"  :@"艾瑞咨询",
            @"weblink":@"https://www.iresearch.com.cn/?aspxerrorpath=/https/index.iresearch.com.cn/overseas/",
            @"subtitle":@""
        },
        @{
            @"title"  :@"世界银行",
            @"weblink":@"http://data.worldbank.org.cn/",
            @"subtitle":@""
        },
        @{
            @"title"  :@"巨潮资讯",
            @"weblink":@"http://www.cninfo.com.cn/new/index",
            @"subtitle":@""
        },
        @{
            @"title"  :@"百度指数-徐工",
            @"weblink":@"http://index.baidu.com/v2/main/index.html#/trend/%E5%BE%90%E5%B7%A5?words=%E5%BE%90%E5%B7%A5",
            @"subtitle":@""
        },
        @{
            @"title"  :@"开发广东",
            @"weblink":@"http://gddata.gd.gov.cn/",
            @"subtitle":@""
        }

    ];
    NSMutableArray *modelArray = [NSMutableArray arrayWithCapacity:dicArray.count];
    for (int i = 0; i< dicArray.count; i++) {
        RGWebModel *model = [[RGWebModel alloc]initWithDic:dicArray[i]];
        [modelArray addObject:model];
    }
    
    return modelArray;
    
}

+ (void)saveWebModelArrayToLocal:(NSArray <RGWebModel *>*)webModelArray
{
    //存储到NSUserDefaults（转NSData存）
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:webModelArray];
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:data forKey:kRGWebModelsTextName];
}

+ (void)saveWebModelToLocal:(RGWebModel *)webModel
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    //取出
    NSData *data = [user objectForKey:kRGWebModelsTextName];
    NSArray * webModelArr = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    NSMutableArray <RGWebModel *> * tempArray = [NSMutableArray array];
    if (webModelArr && webModelArr.count) {
        [tempArray addObjectsFromArray:webModelArr];
    }
    [tempArray addObject:webModel];
    
    [self saveWebModelArrayToLocal:(NSArray <RGWebModel *> *)tempArray];
}

@end
