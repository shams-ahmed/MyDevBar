//
//  SSWebController.m
//  SSMyDevBar
//
//  Created by shams ahmed on 3/2/15.
//  Copyright (c) 2015 shams ahmed. All rights reserved.
//

#import "SSWebController.h"

@implementation SSWebController


#pragma mark -
#pragma mark - Lifecycle
- (instancetype)init {
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}


#pragma mark - WebFrameDelegate
- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame {
    NSLog(@"webView: start provisional load");
    
}

- (void)webView:(WebView *)sender didReceiveIcon:(NSImage *)image forFrame:(WebFrame *)frame {
    NSLog(@"webView: got icon");
    
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
    NSLog(@"webView: finished load");
}

- (void)webView:(WebView *)sender didReceiveServerRedirectForProvisionalLoadForFrame:(WebFrame *)frame {
    NSLog(@"webView: server redirect");
}

- (void)webView:(WebView *)sender didCommitLoadForFrame:(WebFrame *)frame {
    NSLog(@"webView: commit load");
    
}

- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame {
    NSLog(@"webView: got title");
    
}

- (void)webView:(WebView *)sender didFailLoadWithError:(NSError *)error forFrame:(WebFrame *)frame {
    NSLog(@"webView: failed request");
    
}

- (void)webView:(WebView *)sender didChangeLocationWithinPageForFrame:(WebFrame *)frame {
    NSLog(@"webView: location changed");
    
}

- (void)webView:(WebView *)sender willPerformClientRedirectToURL:(NSURL *)URL delay:(NSTimeInterval)seconds fireDate:(NSDate *)date forFrame:(WebFrame *)frame {
    NSLog(@"webView: client redirect");
    
}

- (void)webView:(WebView *)sender willCloseFrame:(WebFrame *)frame {
    NSLog(@"webView: close frame");
    
}

- (void)webView:(WebView *)webView didClearWindowObject:(WebScriptObject *)windowObject forFrame:(WebFrame *)frame {
    NSLog(@"webView: clear window");
    
}

- (void)webView:(WebView *)webView didCreateJavaScriptContext:(JSContext *)context forFrame:(WebFrame *)frame {
    NSLog(@"webView: created js context");
    
}


@end

