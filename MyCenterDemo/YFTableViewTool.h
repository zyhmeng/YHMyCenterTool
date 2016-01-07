/**
 *   
 简便创建TableView的实现工具类
 
 使用方法
 1:
 self.YFTableViewTool=[[YFTableViewTool alloc] init];

 2:
 self.YFTableViewTool.delegate=self;
 [self.YFTableViewTool.easyTableViewDataList addObjectsFromArray:@[@"a",@"b"]];
 self.YFTableViewTool.easyTableViewHeight=80;

 3:
 self.myTableView.delegate=self.YFTableViewTool;
 self.myTableView.dataSource=self.YFTableViewTool;
 
 4:在需要调用TableView的类里，实现EasyTableViewDelegate的代理方法.
 */

#import <Foundation/Foundation.h>
#import <UIKit/UITableView.h>

@protocol YFTableViewDelegate <NSObject>
/**
 *  列表选中了某个元素object 和 所在列表的索引
 *
 *  @param object 该行需要展示的数据模型
 *  @param index  索引
 */
@optional
-(void)yfTableViewSelectedObject:(id)object AtIndex:(NSInteger)index;

/**
 *  设置Cell样式 并 匹配数据 后返回
 *
 *  @param object 该行需要展示的数据模型
 *  @param index  索引
 *
 *  @return 自定义TableViewCell类型的实例
 */
-(UITableViewCell*)yfTableViewCellFitByObject:(id)object AtIndex:(NSInteger)index;
@end

//代理执行类
@interface  YFTableViewTool: NSObject<UITableViewDataSource,UITableViewDelegate>
//数据源
@property (nonatomic,strong) NSMutableArray *yfTableViewDataList;

//配置项
//各个列表元素高度
@property(readwrite,assign) int yfTableViewHeight;

@property(assign,nonatomic)id<YFTableViewDelegate> yfTableViewDelegate;


@end





