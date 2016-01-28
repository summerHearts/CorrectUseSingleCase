//
//  UserMessage.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "UserMessage.h"

@implementation UserMessage


- (void)someMethod{
    //在这里是不能像这样引用单例的，这样的话用户消息和广播消息就会耦合在一起
    if([MessageCenterManager sharedInstance].messageType){
        //do something
    }else{
    
    }
}
@end
