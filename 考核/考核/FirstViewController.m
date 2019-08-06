//
//  FirstViewController.m
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstSonViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *pushButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(push)];
    self.navigationItem.rightBarButtonItem = pushButton;
    

    
}

- (void)push{
    
    
    
    FirstSonViewController *firstSon = [[FirstSonViewController alloc] init];
    [self.navigationController pushViewController:firstSon animated:NO];
    
    
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
