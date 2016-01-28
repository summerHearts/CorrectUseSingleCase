//
//  MessageCenterManager.h
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageCenterManager : NSObject


@property (nonatomic ,assign) NSInteger messageType;
+ (instancetype)sharedInstance;
@end
