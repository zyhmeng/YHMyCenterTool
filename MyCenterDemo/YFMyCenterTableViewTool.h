//
//  YFMyCenterTableViewTool.h
//  MyCenterDemo
//
//  Created by zyh on 16/1/6.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol YFMyCenterTableViewDelegate <NSObject>

- (void)tableViewDidSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface YFMyCenterTableViewTool : NSObject<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, weak) id <YFMyCenterTableViewDelegate> yfMyCenterTableViewDelegate;


@property (nonatomic, strong) NSArray *cellTitleDataList;
@property (nonatomic, strong) NSArray *cellImgDataList;
@end
