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

@property (nonatomic , strong ) OneView* oneView ;

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
    
    
    
    self.viewModel  = [ViewControllerViewModel new];
    
    [_viewModel addObserver:self forKeyPath:@"userName" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    

    RACChannelTo(self,nameTextField.text) = RACChannelTo(self,viewModel.string);
    
    //2、(监听View的变化将view的内容映射到model中)在这里对textView的text changed的信号重新订阅一下，以实现上面channel未实现的另外一个绑定通道.
    
    @weakify(self)

    [self.nameTextField.rac_textSignal subscribeNext:^(id x) {

        @strongify(self)

        self.viewModel.string = x;

        NSLog(@"model text is%@",self.viewModel.string);

    }];

    
    
 
    
}
- (void)layout{}
- (void)getData{}


@end
