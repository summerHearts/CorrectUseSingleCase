//
//  MessageCenterManager.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "MessageCenterManager.h"

static MessageCenterManager *_sharedInstance;

@implementation MessageCenterManager


+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[MessageCenterManager alloc] init];
    });
    return _sharedInstance;
}

-(id)copyWithZone:(NSZone *)zone{
    return _sharedInstance;
}


+(id)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [super allocWithZone:zone];
        
    });
    return _sharedInstance;
}
@end
