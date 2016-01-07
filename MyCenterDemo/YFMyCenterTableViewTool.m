//
//  YFMyCenterTableViewTool.m
//  MyCenterDemo
//
//  Created by zyh on 16/1/6.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "YFMyCenterTableViewTool.h"

@implementation YFMyCenterTableViewTool

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cellImgDataList = [[NSArray alloc]init];
        self.cellTitleDataList = [[NSArray alloc]init];
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"myCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [[self.cellTitleDataList objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:[[self.cellImgDataList objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return ((NSArray *)[self.cellTitleDataList objectAtIndex:section]).count;
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.cellTitleDataList.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self.yfMyCenterTableViewDelegate tableViewDidSelectRowAtIndexPath:indexPath];
}


@end
