//
//  ViewController.h
//  SimpleWebBrowser
//
//  Created by Matt Sencenbaugh on 1/31/12.
//  Copyright (c) 2012 Stanford University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
@class GADBannerView;
@interface SimpleBrowserViewController : UIViewController<SlideNavigationControllerDelegate> {
    IBOutlet UIWebView *webView;
}

@property(nonatomic,retain)IBOutlet UIWebView *webView;

-(IBAction)goBack:(id)sender;
-(IBAction)goForward:(id)sender;
@property(nonatomic, weak) IBOutlet GADBannerView *bannerView;

@end
