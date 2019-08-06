//
//  RegisterViewController.h
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterDelegate <NSObject>

- (void) pass1:(NSString *)str1 pass2:(NSString *)str2;

@end

@interface RegisterViewController : UIViewController
@property id <RegisterDelegate> registerDelegate;

@property UITextField *userTextField;
@property UITextField *passTextField;

@end

NS_ASSUME_NONNULL_END
