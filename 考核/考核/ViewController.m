//
//  ViewController.m
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _userTextField = [[UITextField alloc ]initWithFrame:CGRectMake(50, 300, 200, 50)];
    [self.view addSubview:_userTextField];
    _userTextField.placeholder = @"请输入账号";
    
    _passTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 400, 200, 50)];
    [self.view addSubview:_passTextField];
    _passTextField.secureTextEntry = YES;
    _passTextField.placeholder = @"请输入密码";
    
    UIButton *loadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loadButton.frame = CGRectMake(100, 500, 50, 50);
    [self.view addSubview:loadButton];
    [loadButton setTitle:@"登陆" forState:UIControlStateNormal];
    [loadButton addTarget:self action:@selector(load) forControlEvents:UIControlEventTouchDown];
    
    UIButton *rigisterButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    rigisterButton.frame = CGRectMake(200, 500, 50, 50);
    [rigisterButton setTitle:@"注册" forState:UIControlStateNormal];
    [self.view addSubview:rigisterButton];
    [rigisterButton addTarget:self action:@selector(rigister) forControlEvents:UIControlEventTouchDown];
    
    
}

- (void)load{
    
    _userStr = @"iOSnb123";
    _passStr = @"123456789";
    
    if(([_passTextField.text isEqualToString:_passStr] && [_userTextField.text isEqualToString:_userStr]) || ([_passTextField.text isEqualToString:_passStr2] && [_userTextField.text isEqualToString:_userStr2])){
        
        FirstViewController *firstViewController = [[FirstViewController alloc] init];
        SecondViewController *secondViewController = [[SecondViewController alloc] init];
        ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
        FourthViewController *fourthViewController =  [[FourthViewController alloc] init];
        FifthViewController *fifthViewController = [[FifthViewController alloc] init];
        
        firstViewController.view.backgroundColor = [UIColor whiteColor];
        secondViewController.view.backgroundColor = [UIColor whiteColor];
        thirdViewController.view.backgroundColor = [UIColor whiteColor];
        fourthViewController.view.backgroundColor = [UIColor whiteColor];
        fifthViewController.view.backgroundColor = [UIColor whiteColor];
        
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:firstViewController];
        nav1.title = @"1";
        UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:secondViewController];
        nav2.title = @"2";
        UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
        nav3.title = @"3";
        UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:fourthViewController];
        nav4.title = @"4";
        UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:fifthViewController];
        nav5.title = @"5";
        
        NSArray *navArr = @[nav1, nav2, nav3, nav4, nav5];
        
        UITabBarController *tabBar = [[UITabBarController alloc] init];
        tabBar.viewControllers = navArr;
        
        self.view.window.rootViewController = tabBar;
        NSLog(@"111");
        
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userTextField endEditing:YES];
    [_passTextField endEditing:YES];
}

- (void)rigister{
    
    RegisterViewController *registerRoot = [[RegisterViewController alloc] init];
    [self presentViewController:registerRoot animated:NO completion:nil];
    registerRoot.registerDelegate = self;
    
}

- (void)pass1:(NSString *)str1 pass2:(NSString *)str2{
    
    _userTextField.text = str1;
    _userStr2 = str1;
    _passTextField.text = str2;
    _passStr2 = str2;
    
}

@end
