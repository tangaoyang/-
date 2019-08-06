//
//  ViewController.h
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"

@interface ViewController : UIViewController
<
RegisterDelegate
>

@property UITextField *userTextField;
@property UITextField *passTextField;
@property NSString *userStr;
@property NSString *passStr;
@property NSString *userStr2;
@property NSString *passStr2;

@end

