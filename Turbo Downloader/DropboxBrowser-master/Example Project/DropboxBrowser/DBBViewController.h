//
//  DBBViewController.h
//  DropboxBrowser
//
//  Created by iRare Media on 12/26/12.
//  Copyright (c) 2014 iRare Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DropboxBrowserViewController.h"
#import "SlideNavigationController.h"
#import "LeftMenuViewController.h"
@class GADBannerView;
@interface DBBViewController : UIViewController <DropboxBrowserDelegate, UINavigationControllerDelegate, UIBarPositioningDelegate,SlideNavigationControllerDelegate>

- (IBAction)clearDocs:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *clearDocsBtn;
@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;
@property(nonatomic, weak) IBOutlet GADBannerView *bannerView1;
@end
