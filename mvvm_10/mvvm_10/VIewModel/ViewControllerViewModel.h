//
//  ViewControllerViewModel.h
//  mvvm_10
//
//  Created by Apple on 2017/10/30.
//  Copyright © 2017年 李康滨,工作qq:1218773641. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ViewControllerModel.h"

typedef void (^myBlock)(int a);

@interface ViewControllerViewModel : NSObject

@property (nonatomic , copy ) NSString * userName ;//用户名

@property (nonatomic , copy ) NSString * pwd ;//密码

@property (nonatomic , copy ) NSString * colorStr ;//颜色

@property (nonatomic , assign ) BOOL   btnState ;//按钮状态


@property (nonatomic , strong ) ViewControllerModel * model;


/// 用户登录 为了减少View对viewModel的状态的监听 这里采用block回调来减少状态的处理
- (void)loginSuccess:(void(^)(id json))success
             failure:(void (^)(NSError *error))failure;



@end
