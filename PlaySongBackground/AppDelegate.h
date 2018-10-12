//
//  AppDelegate.h
//  PlaySongBackground
//
//  Created by volive solutions on 12/10/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
     AVAudioPlayer *myAudioPlayer;
}

@property (strong, nonatomic) UIWindow *window;
@property AVAudioPlayer *player;
@property (nonatomic, retain) AVAudioPlayer *myAudioPlayer;
@end

