//
//  EasyTableViewDelegate.m
//  abc
//
//  Created by jangbuk on 15/12/1.
//  Copyright © 2015年 jangbuk. All rights reserved.
//

#import "YFTableViewTool.h"

@implementation YFTableViewTool
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.yfTableViewDataList=[[NSMutableArray alloc] init];
        self.yfTableViewHeight=44;//默认高度
    }
    return self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id object=[self.yfTableViewDataList objectAtIndex:[indexPath row]];
    
    id cell=    [self.yfTableViewDelegate yfTableViewCellFitByObject:object AtIndex:[indexPath row]];

    return cell;
}

//列表中元素个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.yfTableViewDataList.count;
}

//单元高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.yfTableViewHeight;
}

//点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    id object=[self.yfTableViewDataList objectAtIndex:[indexPath row]];
    [self.yfTableViewDelegate yfTableViewSelectedObject:object AtIndex:[indexPath row]];
}



@end
