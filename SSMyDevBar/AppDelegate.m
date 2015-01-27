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

- (void)setUpStatusBar;

@end

@implementation AppDelegate

#pragma mark - 
#pragma mark - AppDelegate
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {    
    [self setUpStatusBar];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


#pragma mark - Status bar
- (void)setUpStatusBar {
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [self.statusItem setMenu:self.statusMenu];
//    [self.statusItem setTitle:@"Dev Bar"];
    [self.statusItem setHighlightMode:YES];
    
    [self.statusItem setImage:[NSImage imageNamed:@"ic_fa_cogs"]];
    
}


@end
