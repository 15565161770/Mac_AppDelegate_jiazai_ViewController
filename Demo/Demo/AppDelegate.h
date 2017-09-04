//
//  AppDelegate.h
//  Demo
//
//  Created by 仝兴伟 on 2017/9/3.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainVC.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) MainVC *mainVC;
@property (nonatomic, strong) NSWindowController *mainWindowController;
@end

