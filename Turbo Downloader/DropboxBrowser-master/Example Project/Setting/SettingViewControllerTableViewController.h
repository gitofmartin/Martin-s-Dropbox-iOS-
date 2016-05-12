//
//  SettingViewControllerTableViewController.h
//  DropboxBrowser
//
//  Created by Romania on 12/30/15.
//  Copyright © 2015 iRare Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface SettingViewControllerTableViewController : UITableViewController<SlideNavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
