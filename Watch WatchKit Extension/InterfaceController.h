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


@property (weak, nonatomic) IBOutlet WKInterfaceButton *green;
- (IBAction)greenColor;


- (IBAction)shareAction;


@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;


@end
