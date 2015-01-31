//
//  AppDelegate.h
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SSStatusMenuController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

/**
 *  Status bar
 */
@property (weak, nonatomic) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusItem;

/**
 *  Manages action by status bar 
 */
@property (strong, nonatomic) SSStatusMenuController *statusMenuController;

/**
 *  set the status if it doesnt exist
 *
 *  @return SSStatusMenuController
 */
- (SSStatusMenuController *)attachStatusMenuController;

/**
 *  Menu action to to a controller
 *
 *  @param sender self
 */
- (IBAction)menuSelected:(id)sender;


@end

