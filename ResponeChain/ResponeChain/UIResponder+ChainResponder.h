//
//  UIResponder+ChainResponder.h
//  ResponeChainDemo
//
//  Created by 谢乐乐 on 2017/1/4.
//  Copyright © 2017年 xll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (ChainResponder)


-(void)handAction:(NSString *)identifier withObject:(id)object;

-(BOOL)chainRouter:(NSString *)identifier withObject:(id)object;

@end
