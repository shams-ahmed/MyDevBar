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
#pragma mark - Init
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
        default:
            
            return nil;
    }
    
}


@end
