//
//  TableViewCell.h
//  ResponeChain
//
//  Created by 谢乐乐 on 2017/5/8.
//  Copyright © 2017年 xll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *aLabel;
@property (weak, nonatomic) IBOutlet UILabel *bLabel;

-(void)config:(NSDictionary *)dic;
@end
