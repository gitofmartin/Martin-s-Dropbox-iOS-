//
//  ViewController.h
//  BGTransferDemo
//
//  Created by Gabriel Theodoropoulos on 25/3/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GADBannerView;
@interface DownloadViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, NSURLSessionDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblFiles;
@property(nonatomic, weak) IBOutlet GADBannerView *bannerView2;

- (IBAction)startOrPauseDownloadingSingleFile:(id)sender;

- (IBAction)stopDownloading:(id)sender;

- (IBAction)startAllDownloads:(id)sender;

- (IBAction)stopAllDownloads:(id)sender;

- (IBAction)initializeAll:(id)sender;

@end
