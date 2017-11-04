//
//  OneView.m
//  mvvm_10
//
//  Created by Apple on 2017/10/30.
//  Copyright © 2017年 李康滨,工作qq:1218773641. All rights reserved.
//

#import "OneView.h"

@implementation OneView

- (instancetype)init{
    self=[super init];
    if (self) {
        [self creatUI];
        [self layout];
    }
    return self;
}

- (void)creatUI{
    
    
    self.backgroundColor = [UIColor redColor];
    
    
    
    _myLabel=[[UITextView alloc]init];
    _myLabel.text=@"我的文本";
    _myLabel.textColor=[UIColor blackColor];
    _myLabel.font=[UIFont systemFontOfSize:(14)];
    
    _myLabel.frame = CGRectMake(0, 0, 100, 100);
    
    [self addSubview:_myLabel];
    
    
}
- (void)layout{
    
    
    
    
    
    
    
}

@end
