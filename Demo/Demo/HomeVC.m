//
//  HomeVC.m
//  Demo
//
//  Created by 仝兴伟 on 2017/9/4.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "HomeVC.h"
#import "BoxVC.h"
#import "nextVC.h"
@interface HomeVC ()

@property (nonatomic, strong) BoxVC *boxVC;
@property (nonatomic, strong) nextVC *nextvc;
@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.title = @"第一";
}



- (IBAction)oneButton:(id)sender {
    NSLog(@"111111----加载白色");
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"one" object:nil];
    
}
- (IBAction)secondButton:(id)sender {
    NSLog(@"222222----加载黄色");
    [[NSNotificationCenter defaultCenter]postNotificationName:@"two" object:nil];

}

@end





















