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
#import "AppDelegate.h"
#import "SSWebController.h"

@interface SSMasterViewController () <SSStatusMenuControllerDelegate>

@property (nonatomic , strong) SSDatabaseController *modelController;
@property (nonatomic, strong) SSWebController *webController;

@end

@implementation SSMasterViewController

#pragma mark -
#pragma mark - Object
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    
    if (self) {
        
    }
    
    return self;
}


#pragma mark - Life Cycle Method
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webController = [[SSWebController alloc] init];
    self.webView.frameLoadDelegate = self.webController;
    
    self.modelController = [[SSDatabaseController alloc] init];

    AppDelegate *appDelegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    SSStatusMenuController *statusMenuController = appDelegate.attachStatusMenuController;
    statusMenuController.delegate = self;
    
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
    
    [self.webView makeTextSmaller:self];
    [self.webView makeTextSmaller:self];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
}


#pragma mark - SSStatusMenuController
- (void)SSStatusMenuController:(SSStatusMenuController *)statusMenuController didSelectItem:(NSNumber *)site {
    switch (site.unsignedIntValue) {
        case SSDatabasePredefinedSiteGithub:
            
            break;
        case SSDatabasePredefinedSiteGitlab:
            
            break;
        case SSDatabasePredefinedSiteGoogle:
            
            break;
        case SSDatabasePredefinedSiteJenkins:
            
            break;
        case SSDatabasePredefinedSiteJira:
            
            break;
        case SSDatabasePredefinedSitePasteBoard:
            
            break;
        case SSDatabasePredefinedSiteStackoverflow:
            
            break;
        case SSDatabasePredefinedSiteTrello:
            
            break;
        default:
            
            break;
    }
    
    /**
     *  show main window
     */
    NSWindow *window = [NSApp windows][0];
    [window orderFront:self];
    
}


@end
