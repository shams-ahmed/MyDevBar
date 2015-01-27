//
//  AppDelegate.h
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

/**
 *  Status bar
 */
@property (weak, nonatomic) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusItem;

@end

