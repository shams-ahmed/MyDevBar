//
//  databaseModel.m
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "SSDatabaseModel.h"


@implementation SSDatabaseModel

#pragma mark - 
#pragma mark - Object
- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (self) {
        self.dictionary = dictionary;
        
    }
    
    return self;
}


#pragma mark - URL
- (NSURL *)urlFor:(SSDatabasePredefinedSite)site {
    switch (site) {
        case SSDatabasePredefinedSiteGoogle:
            
            return [NSURL URLWithString:self.dictionary[@"Google"]];
        case SSDatabasePredefinedSiteJira:
            
            return [NSURL URLWithString:self.dictionary[@"Jira"]];
        case SSDatabasePredefinedSiteStackoverflow:
            
            return [NSURL URLWithString:self.dictionary[@"Stackoverflow"]];
        case SSDatabasePredefinedSiteTrello:
            
            return [NSURL URLWithString:self.dictionary[@"Trello"]];
        case SSDatabasePredefinedSiteGithub:
            
            return [NSURL URLWithString:self.dictionary[@"Github"]];
        case SSDatabasePredefinedSiteGitlab:
            
            return [NSURL URLWithString:self.dictionary[@"Gitlab"]];
        case SSDatabasePredefinedSiteJenkins:
            
            return [NSURL URLWithString:self.dictionary[@"Jenkins"]];
        case SSDatabasePredefinedSitePasteBoard:
            
            return [NSURL URLWithString:self.dictionary[@"PasteBoard"]];
        default:
            
            return nil;
    }
    
}


@end
