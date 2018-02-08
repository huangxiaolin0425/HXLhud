//
//  ViewController.m
//  HHUD
//
//  Created by cdc on 16/4/29.
//  Copyright ©2016年 HXL. All rights reserved.
//

#import "ViewController.h"
#import "HXHUD.h"
@interface ViewController ()
{
    HXHUD *hu;
    UILabel *label;
}
  @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.backgroundColor=[UIColor orangeColor];
    [btn setTitle:@"购买" forState:UIControlStateNormal];
    btn.frame=CGRectMake(self.view.center.x, self.view.center.y+100, 50, 30);
    btn.layer.cornerRadius=5;
    btn.layer.masksToBounds=YES;
    [btn addTarget:self action:@selector(tacth) forControlEvents:UIControlEventTouchUpInside];
    
    label=[[UILabel alloc]init];
   
    [self.view addSubview:label];
    label.frame=CGRectMake(btn.frame.origin.x, btn.frame.origin.y+50, 100, 30);
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)tacth{
    label.text=nil;
   hu =[[HXHUD alloc]init];
    [hu showWithOverlay:YES]; //调用hud并传入是否有背景层颜色
    [hu setHudColor:nil];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        label.text=@"加载成功";
        [hu hide];
        
        
    });
   // [self performSelector:@selector(hid) withObject:nil afterDelay:2];
}
- (void)hid{
    [hu hide];
  }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
