//
//  RGWebModel.h
//  UniversalApp
//
//  Created by RoyGao-MBP16 on 2020/8/4.
//  Copyright © 2020 徐阳. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RGWebModel : NSObject<NSCoding>

@property (nonatomic,copy) NSString *iconName;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;
@property (nonatomic,copy) NSString *weblink;

- (instancetype)initWithDic:(NSDictionary *)dic;
//取
+ (NSArray <RGWebModel *>*)webModelArray;
//存
+ (void)saveWebModelArrayToLocal:(NSArray <RGWebModel *>*)webModelArray;
//添加+存
+ (void)saveWebModelToLocal:(RGWebModel *)webModel;
@end

NS_ASSUME_NONNULL_END
