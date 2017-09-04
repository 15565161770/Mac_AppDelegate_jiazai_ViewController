//
//  MainVC.m
//  Demo
//
//  Created by 仝兴伟 on 2017/9/4.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "MainVC.h"
#import "HomeVC.h"
#import "BoxVC.h"
#import "AppDelegate.h"
@interface MainVC ()
@property (nonatomic, strong) HomeVC *homeVC;
@property (nonatomic, strong) BoxVC *boxVC;

@property (nonatomic, strong) NSWindowController *homeWindowController;
@property (nonatomic, strong) NSWindowController *boxWondowController;
@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.title = @"home";
    
    // 第一个按钮的时候创建一个新的窗口，当点击第二个按钮的时候也创建一个新的窗口，同时还关闭主窗口。
    
    // 需要说明一个由于关闭窗口是windowController管的，所以想要在ViewController里面操作的话，就要将其传入。
}

- (IBAction)OneClick:(id)sender {
    NSLog(@"第一个");
    
    AppDelegate *app = (AppDelegate *)[NSApplication sharedApplication].delegate;
    self.homeVC = [[HomeVC alloc]initWithNibName:@"HomeVC" bundle:[NSBundle mainBundle]];
    NSWindow *windows = [NSWindow windowWithContentViewController:_homeVC];
    self.homeWindowController = [[NSWindowController alloc]initWithWindow:windows];
    [self.homeWindowController showWindow:nil];
    
    [app.mainWindowController  close];
}
- (IBAction)SexondClick:(id)sender {
    NSLog(@"第二个");
    AppDelegate *app = (AppDelegate *)[NSApplication sharedApplication].delegate;

    self.boxVC = [[BoxVC alloc]initWithNibName:@"BoxVC" bundle:[NSBundle mainBundle]];
    
    NSWindow *boxWindow = [NSWindow windowWithContentViewController:_boxVC];
    
    self.boxWondowController = [[NSWindowController alloc]initWithWindow:boxWindow];
    
    [self.boxWondowController showWindow:nil];
    
    // 加上一句关闭当前窗口
    [app.mainWindowController  close];
}

// 不使用storyboard总结;
/**
 
 在AppDelegate中直接加载ViewController
   不管是在AppDelegate中加载还是在ViewController中都是一个套路
  1 先初始化ViewController
  2 创建NSWindow ，然后将Viewcontroller添加到NSWindow上面
  3 创建NSWindowController, 使用NSWindowController管理NSWindow
  4 然后再去显示NSWindowController
 */

@end



























