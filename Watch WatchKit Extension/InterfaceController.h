//
//  InterfaceController.h
//  Watch WatchKit Extension
//
//  Created by yyp on 14/12/31.
//  Copyright (c) 2014年 ___migndao___. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceButton *red;


- (IBAction)redColor;

- (IBAction)action1;

- (IBAction)shareAction;


@end
