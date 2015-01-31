//
//  SSStatusMenuController.m
//  SSMyDevBar
//
//  Created by shams ahmed on 27/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "SSStatusMenuController.h"


@implementation SSStatusMenuController

#pragma mark -
#pragma mark - Object
- (instancetype)init {
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}


#pragma mark - UIAction
- (IBAction)menuSelected:(id)sender {
    NSMenuItem *menuItem = (NSMenuItem *)sender;
    SSDatabasePredefinedSite site;
    
    /**
     *  Find menu item
     */
    if ([menuItem.title isEqualToString:@"Trello"]) {
        site = SSDatabasePredefinedSiteTrello;
        
    } else if ([menuItem.title isEqualToString:@"Jira"]) {
        site = SSDatabasePredefinedSiteJira;
        
    } else if ([menuItem.title isEqualToString:@"Github"]) {
        site = SSDatabasePredefinedSiteGithub;
        
    } else if ([menuItem.title isEqualToString:@"Gitlab"]) {
        site = SSDatabasePredefinedSiteGitlab;
        
    } else if ([menuItem.title isEqualToString:@"Jenkins"]) {
        site = SSDatabasePredefinedSiteJenkins;
        
    } else if ([menuItem.title isEqualToString:@"Google"]) {
        site = SSDatabasePredefinedSiteGoogle;
        
    } else if ([menuItem.title isEqualToString:@"Paste Board"]) {
        site = SSDatabasePredefinedSitePasteBoard;
        
    } else if ([menuItem.title isEqualToString:@"Stackoverflow"]) {
        site = SSDatabasePredefinedSiteStackoverflow;
        
    } else {
        NSLog(@"Error unknown site: %@", menuItem.title);
        
        return;
    }
    
    if ([self.delegate respondsToSelector:@selector(SSStatusMenuController:didSelectItem:)]) {
        [self.delegate performSelector:@selector(SSStatusMenuController:didSelectItem:)
                            withObject:self
                            withObject:@(site)];
        
    }
    
}


@end
