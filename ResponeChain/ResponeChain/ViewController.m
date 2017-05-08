//
//  ViewController.m
//  ResponeChain
//
//  Created by 谢乐乐 on 2017/5/8.
//  Copyright © 2017年 xll. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "UIResponder+ChainResponder.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *mTableView;
}
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    mTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mTableView.delegate = self;
    mTableView.dataSource = self;
    [self.view addSubview:mTableView];
    [mTableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithCapacity:0];
        for (int i = 0; i < 40; i ++) {
            [_dataArray addObject:@{@"name":@"小明",@"title":@"学长"}];
        }
    }
    return _dataArray;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    [cell config:self.dataArray[indexPath.row]];
    return cell;
}
-(BOOL)chainRouter:(NSString *)identifier withObject:(id)object
{
    NSLog(@"vc页面收到%@的数据做处理  object 为数据  return NO  不在往下传递",identifier);
    
    return NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
