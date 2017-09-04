//
//  AppDelegate.m
//  Demo
//
//  Created by 仝兴伟 on 2017/9/3.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    // 1 如果不适用storyboard，程序就会去读取AppDelegate中的代码
    // 把storyboard删除之后要记得在射中把默认storyboard也删除
    
    // 2 需要一个NSWindow或其子类的实例 ，NSWindow有这样一个初始化函数
    // + (instancetype)windowWithContentViewController:(NSViewController *)contentViewController;
    // 3 有了一个窗口，那么究竟显示什么，是需要一个ViewController说了算，构造一个ViewController
    
    // 4 有了视图控制器，一定是用来显示视图的
    
    // 5 有了window之后，还得需要一个控制器来把这个窗口显示在屏幕上，所以用到了NSWindowController ，而且NSWindowController也提供了一个构造函数
    //     [NSWindowController alloc]initWithWindow:(nullable NSWindow *);

    // 齐活，这样可以看到在NSWindowController里面包含一个他要控制的NSWindow,而且NSWindow需要一个NSViewController来管理具体的视图，最后还需要一个具体的NSView。当我们把这些弄齐全之后，就可以调用NSWindowController的方法，显示窗口了。
    
    
    // @interface MainVC : NSViewController
    self.mainVC = [[MainVC alloc]initWithNibName:@"MainVC" bundle:nil];
    
    NSWindow *mainWindow =  [NSWindow windowWithContentViewController:self.mainVC];
    
    //@property (nonatomic, strong) NSWindowController *mainWindowController;
    self.mainWindowController =[[NSWindowController alloc]initWithWindow:mainWindow];

    self.mainVC.view.window.windowController = self.mainWindowController;
    
    [self.mainWindowController.window makeKeyAndOrderFront:self];
    [self.mainWindowController.window center];
    [self.mainWindowController showWindow:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [self.mainWindowController.window makeKeyAndOrderFront:self];
    return YES;
}

@end
































