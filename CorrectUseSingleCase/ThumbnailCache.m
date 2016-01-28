//
//  ThumbnailCache.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "ThumbnailCache.h"

@implementation ThumbnailCache

- (void)cacheProfileImage:(NSData*)imageData forUserId:(NSString *)userId{
    NSString *documentPath = [NSHomeDirectory()
                              stringByAppendingPathComponent:@"Documents"];
    NSString *FileName=[documentPath stringByAppendingPathComponent:[NSString  stringWithFormat:@"profileImage%@",userId]];
    [imageData writeToFile:FileName atomically:YES];
}

- (NSData *)cachedProfileImageForUserId:(NSString *)userId{
    NSString *documentPath = [NSHomeDirectory()
                              stringByAppendingPathComponent:@"Documents"];
    NSString *fileName=[documentPath stringByAppendingPathComponent:[NSString  stringWithFormat:@"profileImage%@",userId]];
    NSData *data=[NSData dataWithContentsOfFile:fileName options:0 error:NULL];
    return data;
}
@end
