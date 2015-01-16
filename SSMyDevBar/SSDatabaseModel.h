//
//  databaseModel.h
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SSDatabasePredefinedSite) {
    SSDatabasePredefinedSiteTrello,
    SSDatabasePredefinedSiteGoogle,
    SSDatabasePredefinedSiteJira,
    SSDatabasePredefinedSiteStackoverflow
    
};

@interface SSDatabaseModel : NSObject

@property (nonatomic, strong) NSDictionary *dictionary;

- (id)initWithDictionary:(NSDictionary *)dictionary;

/**
 *  get site from dictionary
 *
 *  @param site SSDatabasePredefinedSite
 *
 *  @return url
 */
- (NSURL *)urlFor:(SSDatabasePredefinedSite)site;


@end
