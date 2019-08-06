//
//  FirstSonViewController.m
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "FirstSonViewController.h"
#import "TAYTableViewCell.h"
#import "TAY2TableViewCell.h"

@interface FirstSonViewController ()

@end

@implementation FirstSonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *back = [UIImage imageNamed:@"back.png"];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStylePlain target:self action:@selector(pop)];
    backItem.image = back;
    self.navigationItem.backBarButtonItem = backItem;
    //[self.navigationItem hidesBackButton];
    //UIImageView *backImageView = [[UIImageView alloc] initWithImage:back];
    
    
    self.title = @"朋友圈";
    
    UIImage *backGroundImage = [UIImage imageNamed:@"n2.jpg"];
    UIImageView *backGroundImageView = [[UIImageView alloc] initWithImage:backGroundImage];
    backGroundImageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 170);
    UIImage *touImage = [UIImage imageNamed:@"n4.jpg"];
    UIImageView *touImageView = [[UIImageView alloc] initWithImage:touImage];
    touImageView.frame = CGRectMake(300, 120, 75, 75);
    UIImageView *headView = [[UIImageView alloc] init];
    UILabel *headLabel = [[UILabel alloc] initWithFrame:CGRectMake(255, 145, 50, 20)];
    headLabel.textColor = [UIColor whiteColor];
    headLabel.font = [UIFont systemFontOfSize:20];
    headLabel.text = @"阡陌";
    [headView addSubview:backGroundImageView];
    [headView addSubview:touImageView];
     [headView addSubview:headLabel];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 90, [UIScreen mainScreen].bounds.size.width, 700) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView registerClass:[TAYTableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableView registerClass:[TAY2TableViewCell class] forCellReuseIdentifier:@"222"];
    _tableView.tableHeaderView = headView;
    _tableView.tableHeaderView.frame = CGRectMake(0, 90, 414, 180);
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *nameArr = @[@"唐一" ,@"李二" ,@"张三" ,@"赵四" ,@"周五", @"肖六", @"鲁七", @"吕八", @"孙九", @"吴十"];
    NSArray *contentArr = @[@"哈哈哈哈哈", @"啦啦啦啦啦", @"嘻嘻嘻嘻嘻" ,@"啊啊啊啊啊" , @"拍拍拍拍拍", @"滴滴答答", @"古古怪怪", @"反反复复", @"人人人人", @"蒙牛牛奶"];
    NSArray *frameArr = @[@"门前", @"大桥下", @"门后", @"大桥上", @"校门口", @"宿舍", @"实验室", @"大街道", @"小巷", @"飞机场"];
    NSArray *timeArr = @[@"15分钟前", @"19分钟前", @"23分钟前", @"26分钟前", @"29分钟前", @"35分钟前", @"45分钟前", @"49分钟前", @"51分钟前", @"59分钟前"];
    
    if(indexPath.row % 2){
        TAYTableViewCell *cell1 = [_tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
        cell1.nameLabel.text = nameArr[indexPath.row];
        cell1.contentLabel.text = contentArr[indexPath.row];
        cell1.timeLabel.text = timeArr[indexPath.row];
        cell1.frameLabel.text = frameArr[indexPath.row];
        cell1.contentImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)indexPath.row + 1]];
        cell1.touImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"t%ld.jpg", indexPath.row + 1]];
        
        return cell1;
    }else {
        
        TAY2TableViewCell *cell2 = [_tableView dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
        cell2.nameLabel.text = nameArr[indexPath.row];
        cell2.contentLabel.text = contentArr[indexPath.row];
        cell2.timeLabel.text = timeArr[indexPath.row];
        cell2.frameLabel.text = frameArr[indexPath.row];
        cell2.contentImageView1.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)indexPath.row + 1]];
        cell2.contentImageView2.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)indexPath.row + 11]];
        cell2.touImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"t%ld.jpg", indexPath.row + 1]];
        
        return cell2;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row % 2){
        return 460;
    } else {
        return 270;
    }
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
