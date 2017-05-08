//
//  UIResponder+ChainResponder.m
//  ResponeChainDemo
//
//  Created by 谢乐乐 on 2017/1/4.
//  Copyright © 2017年 xll. All rights reserved.
//

#import "UIResponder+ChainResponder.h"

@implementation UIResponder (ChainResponder)

-(void)handAction:(NSString *)identifier withObject:(id)object
{
    if ([self chainRouter:identifier withObject:object] && self.nextResponder) {
        [self.nextResponder handAction:identifier withObject:object];
    }
}

-(BOOL)chainRouter:(NSString *)identifier withObject:(id)object
{
    //如果是yes  就往下传递 如果NO  就在当前页面处理就结束了 是实现消息链传递的最好方法
    return YES;
}
@end
