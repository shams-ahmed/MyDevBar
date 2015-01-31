//
//  SSStatusMenuController.h
//  SSMyDevBar
//
//  Created by shams ahmed on 27/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDatabaseModel.h"

@class SSStatusMenuController;

@protocol SSStatusMenuControllerDelegate <NSObject>

/**
 *  selected site
 *
 *  @param statusMenuController controller
 *  @param site                 site selected
 */
- (void)SSStatusMenuController:(SSStatusMenuController *)statusMenuController didSelectItem:(NSNumber *)site;

@end

@interface SSStatusMenuController : NSObject

@property (weak, nonatomic) id<SSStatusMenuControllerDelegate> delegate;

/**
 *  Status bar
 */
@property (weak, nonatomic) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusItem;

/**
 *  handle all selections
 *
 *  @param sender self
 */
- (IBAction)menuSelected:(id)sender;


@end
