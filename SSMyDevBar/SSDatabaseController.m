//
//  databaseController.m
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "SSDatabaseController.h"
#import <libextobjc/EXTScope.h>

@interface SSDatabaseController ()

@end


@implementation SSDatabaseController

#pragma mark -
#pragma mark - Object
- (instancetype)init {
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}


#pragma mark - Parse
- (RACSignal *)startParsing {
    @weakify(self);
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"database" ofType:@"plist"];
        
        
        @strongify(self);
        self.model = [[SSDatabaseModel alloc] initWithDictionary:[NSDictionary dictionaryWithContentsOfFile:path]];
        self.model ? [subscriber sendCompleted] : [subscriber sendError:nil];
        
        return nil;
    }];
    
}


@end
