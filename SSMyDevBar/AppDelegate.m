//
//  AppDelegate.m
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "AppDelegate.h"
#import "SSMasterViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

- (void)addConsoleLog;

@end

@implementation AppDelegate

#pragma mark - 
#pragma mark - AppDelegate
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
 
    [self addConsoleLog];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


#pragma mark - Logs
- (void)addConsoleLog {
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
//    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    
    
    
}


@end
