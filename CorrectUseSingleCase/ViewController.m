//
//  ViewController.m
//  CorrectUseSingleCase
//
//  Created by 佐毅 on 16/1/28.
//  Copyright © 2016年 上海乐住信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "MikeMember.h"
#import "FriendListController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
- (IBAction)pushBtnAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //"单例就是披着羊皮的全局状态"。一个单例可以被使用在任何地方，而不需要显式地声明依赖。
     //单例应该只用来保存全局的状态，并且不能和任何作用域绑定。如果这些状态的作用域比一个完整的应用程序的生命周期要短，那么这个状态就不应该使用单例来管理。用一个单例来管理用户绑定的状态，不是很好的设计方式，需要重新评估自己的设计问题。

    MikeMember  *member = [[MikeMember alloc]init];
    [self.profileImage sd_setImageWithPreviousCachedImageWithURL:[NSURL URLWithString:@"https://github.com/summerHearts/TaskManager/blob/master/TaskManager/Image/4.jpg?raw=true"] placeholderImage:[UIImage imageNamed:@""] options:SDWebImageProgressiveDownload progress:^(NSInteger receivedSize, NSInteger expectedSize) {
     
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        [member setProfileImageByUserID:@"12" imageData:UIImageJPEGRepresentation(image,0.9)];
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushBtnAction:(id)sender {
    
    FriendListController *friendListController = [[FriendListController alloc]init];
    [self.navigationController pushViewController:friendListController animated:YES];
}
@end
