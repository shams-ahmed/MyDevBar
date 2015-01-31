//
//  SSMasterViewController.h
//  SSMyDevBar
//
//  Created by shams ahmed on 15/1/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface SSMasterViewController : NSViewController

/**
 *  main website
 */
@property (nonatomic, strong) IBOutlet WebView *webView;


@end
