//
//  InterfaceController.m
//  Watch WatchKit Extension
//
//  Created by yyp on 14/12/31.
//  Copyright (c) 2014年 ___migndao___. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    NSLog(@"%@ awakeWithContext", self);

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"%@ willactive", self);

}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)openAppWithColor:(NSString *)color
{
    [WKInterfaceController openParentApplication:@{@"color":color} reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"reply===%@",replyInfo);
    }];
}

- (IBAction)redColor {
    [self openAppWithColor:@"red"];
}

- (IBAction)action1 {
}

- (IBAction)shareAction {
    NSLog(@"=====");
}


//这个方法一定要写在InterfaceController里，通知界面按键按下后，本界面会呈现，在awake方法后会根据identifier调用相应的方法
- (void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification
{
    if ([identifier isEqualToString:@"secondButtonAction"]) {
        NSLog(@"====");
    }
}


@end



