//
//  AppDelegate.m
//  Watch
//
//  Created by yyp on 14/12/31.
//  Copyright (c) 2014年 ___migndao___. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    UIMutableUserNotificationAction *replyAction = [[UIMutableUserNotificationAction alloc]init];
//    replyAction.identifier = @"firstButtonAction";
//    replyAction.title = @"回复";
//    replyAction.activationMode = UIUserNotificationActivationModeForeground;
//    replyAction.authenticationRequired = YES;
//    
//    UIMutableUserNotificationAction *detailAction = [[UIMutableUserNotificationAction alloc]init];
//    detailAction.identifier = @"secondButtonAction";
//    detailAction.title = @"查看详情";
//    detailAction.activationMode = UIUserNotificationActivationModeBackground;
//    detailAction.authenticationRequired = YES;
//    
//    UIMutableUserNotificationCategory *category = [[UIMutableUserNotificationCategory alloc]init];
//    category.identifier = @"myCategory";
//    //[category setActions:@[replyAction,detailAction] forContext:UIUserNotificationActionContextMinimal];
//    [category setActions:@[replyAction,detailAction] forContext:UIUserNotificationActionContextDefault];
//    UIUserNotificationSettings *set = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound) categories:[NSSet setWithObject:category]];
//    [[UIApplication sharedApplication] registerUserNotificationSettings:set];
//    [[UIApplication sharedApplication] registerForRemoteNotifications];

    
//    UILocalNotification *notification = [[UILocalNotification alloc] init];
//    if (notification!=nil) {
//        NSLog(@">> support local notification");
//        NSDate *now=[NSDate new];
//        notification.fireDate=[now dateByAddingTimeInterval:10];
//        notification.timeZone=[NSTimeZone defaultTimeZone];
//        notification.alertBody=@"该去吃晚饭了！";
//        notification.userInfo = @{
//                                  @"aps":@{
//                                          @"alert":@"xxx"
//                                          },
//                                  @"badge":@"3",
//                                  @"type":@"2",
//                                  @"projectid":@"1",
//                                  };
//        [[UIApplication sharedApplication]   scheduleLocalNotification:notification];
//    }
//    
    return YES;
}

- (void)application:(UIApplication *)application handleWatchKitExtensionRequest:(NSDictionary *)userInfo reply:(void (^)(NSDictionary *))reply
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeColor" object:nil];

    reply(@{@"===":@"4444"});
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSLog(@"%@",deviceToken);
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
