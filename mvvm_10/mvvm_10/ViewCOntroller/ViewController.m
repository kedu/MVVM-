//
//  ViewController.m
//  mvvm_10
//
//  Created by Apple on 2017/10/30.
//  Copyright © 2017年 李康滨,工作qq:1218773641. All rights reserved.
//

#import "ViewController.h"

#import "ViewControllerViewModel.h"
#import "OneView.h"



@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *pwdLabel;

@property (weak, nonatomic) IBOutlet UITextField *pwdTextfield;
@property (weak, nonatomic) IBOutlet UIButton *loginbtn;

@end

@implementation ViewController

- (IBAction)loginAction:(id)sender {
    
    NSLog(@"登录");
    
    
    
    
    
    
    
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configNav];
    
    [self creatUI];
    
    [self layout];
    
    [self getData];
    
    
    
    
    
    
}

- (void)configNav{}
- (void)creatUI{
    
    OneView*one = [OneView new];
    
    one.frame = CGRectMake(0, 0, 100, 100);
    
    [self.view addSubview:one];
    
    
    
    
    
    
    
    
    
    
    
    
    
}
- (void)layout{}
- (void)getData{}


@end
