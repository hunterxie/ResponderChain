# ResponderChain
消息链

可以实现数据通过消息链传递  从而到达传值；

从而不在需要什么块函数 或者代理

比如说cell 传递给VC  可直接通过消息链传递

Cell  -> VC -> window
View - >View  -> VC -> window
举例：
1、某个Cell的.m文件中点击事件触发
```
@implementation XLControlCell
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
// Drawing code
}
*/
-(void)awakeFromNib
{
[super awakeFromNib];
}
- (IBAction)mClickAll:(id)sender {
[self handAction:NSStringFromClass([self class]) withObject:@(1)];
}
@end
```
2、在使用该Cell的控制器ViewController下使用
```
-(BOOL)chainRouter:(NSString *)identifier withObject:(id)object
{
if ([identifier isEqualToString:@"XLControlCell"]) {
//dosomething .
}
return NO;
}
```
