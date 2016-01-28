//
//  MikeMember.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "MikeMember.h"
@implementation MikeMember

- (instancetype)init
{
    if ((self = [super init])){
        _thumbbailCache = [[ThumbnailCache alloc]init];
    }
    return self;
}

- (NSData *)getProfileImageDataByUserid:(NSString *)userID
{
   return  [_thumbbailCache cachedProfileImageForUserId:userID];
}

- (void)setProfileImageByUserID:(NSString *)userID imageData:(NSData *)imageData
{
    [_thumbbailCache cacheProfileImage:imageData forUserId:userID];
}
@end
