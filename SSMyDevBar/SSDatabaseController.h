//
//  databaseController.h
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDatabaseModel.h"

@interface SSDatabaseController : NSObject

@property (nonatomic, strong) SSDatabaseModel *model;

/**
 *  starting the paring of plist
 *
 *  @return signal
 */
- (RACSignal *)startParsing;


@end
