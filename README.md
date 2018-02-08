# HXLhud
这是一款非常好用的hud使用时只需导入：
HXHUD.h/.m
NSObject+RandomColor.h/.m
PrefixHeader.pch即可
示例代码[Objective-C] 	

hxHud =[[HXHUD alloc]init];
[hxHud showWithOverlay:YES]; //调用hud并传入是否有背景层颜
[hxHud setHudColor:nil];    //设置动画视图的颜色
[hxHud hide];               //隐藏视图
