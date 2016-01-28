//
//  MikeMember.h
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ThumbnailCache.h"

@interface MikeMember : NSObject

@property (nonatomic,copy) NSString *userid;

@property (nonatomic,strong) NSData *profileImageData;

@property (nonatomic,strong) ThumbnailCache *thumbbailCache;

- (NSData *)getProfileImageDataByUserid:(NSString *)userID;

- (void)setProfileImageByUserID:(NSString *)userID imageData:(NSData *)imageData;

@end
