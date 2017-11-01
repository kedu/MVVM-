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

@property (nonatomic , strong ) ViewControllerViewModel * viewModel;

@end

@implementation ViewController

- (IBAction)loginAction:(id)sender {
    
    NSLog(@"登录");
    
    
//    mvvm

    
    // view | viewController  <<==>>  viewModel  <<==>>    model
    
    //viewModel 不包含UI控件 ,viewModel写网络请求,把view的属性标上,把view的动作处理(有数据交互).
    //model <-> viewModel
    //view 负责从viewModel里拿数据,并且展示.
    //viewController  让view来显示,持有view和viewModel,绑定.
    //viewModel 持有model,model不持有任何东西.viewModel 监听model的变化并且通知view,view接受到通知负责展示.
    
    //先用viewModel 请求网络数据,在block里把数据给viewController,viewController再把数据给view,view展示出来.
    //用户点击按钮,viewModel属性改变.在viewModel里处理数据,成功了block回调给viewController.
    
    //view界面改变 修改ViewModel 属性
    //ViewModel 属性改变  ,view修改界面.
    
    
    
    
    
    
    
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
    
    
    
    self.viewModel  = [ViewControllerViewModel new];
    
    [_viewModel addObserver:self forKeyPath:@"userName" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    
    
    
    
    
    
    
    
    
    
    
}
- (void)layout{}
- (void)getData{}


@end
