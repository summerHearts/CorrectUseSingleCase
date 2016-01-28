//
//  BroadcastMessage.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "BroadcastMessage.h"
#import "MessageCenterManager.h"
@implementation BroadcastMessage

- (void)someMethod{
    [[MessageCenterManager sharedInstance] setMessageType:0];

}
@end
