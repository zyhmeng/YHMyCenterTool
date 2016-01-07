//
//  ViewController.m
//  MyCenterDemo
//
//  Created by zyh on 16/1/6.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "ViewController.h"
#import "YFAlertViewTool.h"


@interface ViewController ()<YFMyCenterTableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.yfTableViewTool = [[YFMyCenterTableViewTool alloc]init];
    self.yfTableViewTool.yfMyCenterTableViewDelegate = self;
    self.tableView.delegate = self.yfTableViewTool;
    self.tableView.dataSource = self.yfTableViewTool;
    
    self.yfTableViewTool.cellTitleDataList = [NSArray arrayWithObjects:[NSArray arrayWithObjects:@"充值", nil],[NSArray arrayWithObjects:@"我的缴费记录",@"我的报修",@"我的租赁", nil], [NSArray arrayWithObjects:@"我的银行卡",nil],nil];
    
    self.yfTableViewTool.cellImgDataList = [NSArray arrayWithObjects: [NSArray arrayWithObjects:@"充值", nil],[NSArray arrayWithObjects:@"我的缴费记录",@"我的报修",@"我的租赁", nil], [NSArray arrayWithObjects:@"我的银行卡",nil],nil];
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    headerView.backgroundColor = [UIColor orangeColor];
    self.tableView.tableHeaderView = headerView;
    [self.tableView reloadData];
    
}

#pragma mark - YFMyCenterTableViewDelegate
- (void)tableViewDidSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [YFAlertViewTool showActionAlertStyleInViewController:self title:@"此功能暂未开放" message:nil okTitle:@"确定" cancelTitlt:@"取消" okBtnHandler:^(UIAlertAction * _Nonnull action) {
        
    } cancelBtnHandler:^(UIAlertAction * _Nonnull action) {
        
    }];
}

@end
