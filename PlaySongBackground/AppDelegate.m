//
//  AppDelegate.m
//  PlaySongBackground
//
//  Created by volive solutions on 12/10/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import "AppDelegate.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window = _window;
@synthesize myAudioPlayer;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"track2" ofType: @"caf"];
   // NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"iNamokar" ofType:@"mp3"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath];
    
    myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    [[AVAudioSession sharedInstance] setActive: YES error: nil];
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    myAudioPlayer.numberOfLoops = -1;
    [myAudioPlayer prepareToPlay];
    [self.myAudioPlayer play];
    
    // NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"notification_sound" ofType: @"mp3"];
//    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"track2" ofType: @"caf"];
//    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
//    myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//    myAudioPlayer.numberOfLoops = -1; //infinite loop
//    [myAudioPlayer play];
//

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"will resignactive");
    // [myAudioPlayer play];
//    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"track2" ofType: @"caf"];
//    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
//    myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//    myAudioPlayer.numberOfLoops = -1; //infinite loop
//    [myAudioPlayer play];
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    __block UIBackgroundTaskIdentifier task = 0;
    task=[application beginBackgroundTaskWithExpirationHandler:^{
        NSLog(@"Expiration handler called %f",[application backgroundTimeRemaining]);
        [application endBackgroundTask:task];
        task=UIBackgroundTaskInvalid;
    }];
    NSLog(@"enter background");
//    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"track2" ofType: @"caf"];
//    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
//    myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//    myAudioPlayer.numberOfLoops = -1; //infinite loop
//    [myAudioPlayer play];
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"will enterforgoriub");
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
