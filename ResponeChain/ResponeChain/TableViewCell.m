//
//  TableViewCell.m
//  ResponeChain
//
//  Created by 谢乐乐 on 2017/5/8.
//  Copyright © 2017年 xll. All rights reserved.
//

#import "TableViewCell.h"

#import "UIResponder+ChainResponder.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.aLabel addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)]];
    self.aLabel.userInteractionEnabled = YES;
    
    // Initialization code
}
-(void)tap
{
    [self handAction:@"某个Cell" withObject:@"niubi"];
}
-(BOOL)chainRouter:(NSString *)identifier withObject:(id)object
{
   //这里也可以处理下 不如按钮点击的ui处理  不处理就直接传递给nextresponder;
    return YES;
}

-(void)config:(NSDictionary *)dic
{
    self.aLabel.text = dic[@"name"];
    
    self.bLabel.text = dic[@"title"];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
