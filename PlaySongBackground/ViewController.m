//
//  ViewController.m
//  PlaySongBackground
//
//  Created by volive solutions on 12/10/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
//#import <AVFoundation/AVFoundation.h>
//#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()
@property AppDelegate *appDel;
@property AVAudioPlayer *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

//MARK:- STOP PLAY BTN ACTION
- (IBAction)stopPlayBtnAction:(id)sender {
    AppDelegate *app = [[UIApplication sharedApplication]delegate];
    [app.myAudioPlayer  stop];
    
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
