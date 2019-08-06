//
//  RegisterViewController.m
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _userTextField = [[UITextField alloc ]initWithFrame:CGRectMake(50, 300, 200, 50)];
    [self.view addSubview:_userTextField];
    _userTextField.placeholder = @"请输入账号";
    
    _passTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 400, 200, 50)];
    [self.view addSubview:_passTextField];
    _passTextField.secureTextEntry = YES;
    _passTextField.placeholder = @"请输入密码";
    
    UIButton *loadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loadButton.frame = CGRectMake(100, 500, 150, 50);
    [self.view addSubview:loadButton];
    [loadButton setTitle:@"返回登陆" forState:UIControlStateNormal];
    [loadButton addTarget:self action:@selector(load) forControlEvents:UIControlEventTouchDown];
    
    
}

- (void)load{
    
    [self dismissViewControllerAnimated:NO completion:nil];
    if([_registerDelegate respondsToSelector:@selector(pass1:pass2: ) ]) {
        [_registerDelegate pass1:_userTextField.text pass2:_passTextField.text];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userTextField endEditing:YES];
    [_passTextField endEditing:YES];
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
