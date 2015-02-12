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
@property (nonatomic, strong) NSMutableURLRequest *request;

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
    self.webView.shouldUpdateWhileOffscreen = YES;
    self.webView.drawsBackground = YES;
    
    self.request = [[NSMutableURLRequest alloc] init];
    self.request.cachePolicy = NSURLRequestReturnCacheDataElseLoad;
    
    self.modelController = [[SSDatabaseController alloc] init];

    AppDelegate *appDelegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    SSStatusMenuController *statusMenuController = appDelegate.attachStatusMenuController;
    statusMenuController.delegate = self;
    
    [self addKeyboardListener];
    
}

- (void)viewWillAppear {
    [super viewWillAppear];
    
    
    @weakify(self);
    [[self.modelController startParsing] subscribeError:^(NSError *error) {
        NSLog(@"Could not parse the plist file");
        
    } completed:^{
        @strongify(self);
        
        if (!self.webView.mainFrameURL) {
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteTrello];
            
            [self.webView.mainFrame loadRequest:self.request];
            
        }
        
        
    }];
    
}

- (void)viewDidAppear {
    [super viewDidAppear];
    
    /**
     *  make the web view smaller
     */
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
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteGithub];
            
            break;
        case SSDatabasePredefinedSiteGitlab:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteGitlab];
            
            break;
        case SSDatabasePredefinedSiteGoogle:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteGoogle];
            
            break;
        case SSDatabasePredefinedSiteJenkins:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteJenkins];
            
            break;
        case SSDatabasePredefinedSiteJira:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteJira];
            
            break;
        case SSDatabasePredefinedSitePasteBoard:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSitePasteBoard];
            
            break;
        case SSDatabasePredefinedSiteStackoverflow:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteStackoverflow];
            
            break;
        case SSDatabasePredefinedSiteTrello:
            self.request.URL = [self.modelController.model urlFor:SSDatabasePredefinedSiteTrello];
            
            break;
        default:
            
            break;
    }
    
    /**
     *  load new request
     */
    [self.webView.mainFrame loadRequest:self.request];
    
    
    /**
     *  show main window
     */
    [(NSWindow *)[NSApp windows][0] orderFront:self];
    
}


#pragma mark - keyboard listener
- (void)addKeyboardListener {
    @weakify(self);
    
    /**
     *  reload
     */
    [NSEvent addLocalMonitorForEventsMatchingMask:NSKeyDownMask
                                          handler:^(NSEvent *event)
    {
        @strongify(self);

        if (event.modifierFlags & NSCommandKeyMask) {
            switch (event.keyCode) {
                case 15: // reload
                    [self.webView reload:nil];
                    
                    break;
                case 124: // right
                    [self.webView goForward];
                    
                    break;
                case 123: // left
                    [self.webView goBack];
                    
                    break;
                case 126: // up
                    
                    break;
                case 125: // down
                    
                    break;
                default:
                    
                    break;
            }
            
        }
        
        return event;
    }];

}


@end
