//
//  FriendListController.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "FriendListController.h"
#import "MikeMember.h"
@interface FriendListController ()

@property (nonatomic,strong) UIImageView *cacheImageView;
@end

@implementation FriendListController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    MikeMember  *member = [[MikeMember alloc]init];

    self.cacheImageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 100, 200, 200)];
    [self.view addSubview:self.cacheImageView];
    
    [self.cacheImageView setImage:[UIImage imageWithData:[member getProfileImageDataByUserid:@"12"] scale:10.0f]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
