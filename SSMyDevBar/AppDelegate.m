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

@property (weak, nonatomic) IBOutlet NSWindow *window;

- (void)setUpStatusBar;

@end

@implementation AppDelegate

#pragma mark - 
#pragma mark - AppDelegate
- (void)applicationWillFinishLaunching:(NSNotification *)notification {
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self setUpStatusBar];
    [self attachStatusMenuController];
   
    self.window = [NSApp windows][0];
    
//    [self.window setLevel:NSStatusWindowLevel];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    NSLog(@"App: will terminate");
    
}

- (void)applicationWillHide:(NSNotification *)notification {
    
}

- (void)applicationDidHide:(NSNotification *)notification {
    NSLog(@"App: did hide");
    
}

- (void)applicationWillUnhide:(NSNotification *)notification {
    
}

- (void)applicationDidUnhide:(NSNotification *)notification {
    NSLog(@"App: did unhide");
    
}

- (void)applicationWillBecomeActive:(NSNotification *)notification {
    
}

- (void)applicationDidBecomeActive:(NSNotification *)notification {
    NSLog(@"App: did become active");
    
}

- (void)applicationWillResignActive:(NSNotification *)notification {
    [self.window close];
    
}

- (void)applicationDidResignActive:(NSNotification *)notification {
    NSLog(@"App: did resign");
    
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

