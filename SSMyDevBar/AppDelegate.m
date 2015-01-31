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
- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    [self setUpStatusBar];
    [self attachStatusMenuController];
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {

}

- (void)applicationWillHide:(NSNotification *)notification {
    
}

- (void)applicationDidHide:(NSNotification *)notification {
    
}

- (void)applicationWillUnhide:(NSNotification *)notification {
    
}

- (void)applicationDidUnhide:(NSNotification *)notification {
    
}

- (void)applicationWillBecomeActive:(NSNotification *)notification {
    
}

- (void)applicationDidBecomeActive:(NSNotification *)notification {
    
}

- (void)applicationWillResignActive:(NSNotification *)notification {
    
}

- (void)applicationDidResignActive:(NSNotification *)notification {
    
}


#pragma mark - Status bar
- (SSStatusMenuController *)attachStatusMenuController {
    if (!self.statusMenuController) {
        self.statusMenuController = [[SSStatusMenuController alloc] init];

    }
    
    return self.statusMenuController;
}

- (void)setUpStatusBar {
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [self.statusItem setMenu:self.statusMenu];
    [self.statusItem setImage:[NSImage imageNamed:@"ic_fa_cogs"]];
    
}


#pragma mark - Menu
- (IBAction)menuSelected:(id)sender {
    [self.statusMenuController menuSelected:sender];
    
}


@end

