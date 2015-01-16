//
//  SSMasterViewController.m
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "SSMasterViewController.h"
#import "SSDatabaseController.h"
#import <ReactiveCocoa/RACEXTScope.h>
//#import <libextobjc/EXTScope.h>

@interface SSMasterViewController ()

@property (nonatomic , strong) SSDatabaseController *modelController;

@end

@implementation SSMasterViewController

#pragma mark -
#pragma mark - Life Cycle Method
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.modelController = [[SSDatabaseController alloc] init];
    
}

- (void)viewWillAppear {
    [super viewWillAppear];
    
    @weakify(self);
    [[self.modelController startParsing] subscribeError:^(NSError *error) {
        NSLog(@"Could not parse the plist file");
        
    } completed:^{
        @strongify(self);
        
        NSURL *url = [self.modelController.model urlFor:SSDatabasePredefinedSiteTrello];
        
        [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
        
    }];
    
    
    
 
}

- (void)viewDidAppear {
    [super viewDidAppear];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
}


@end
