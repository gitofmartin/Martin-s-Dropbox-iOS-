//
//  MenuViewController.m
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "SlideNavigationContorllerAnimatorFade.h"
#import "SlideNavigationContorllerAnimatorSlide.h"
#import "SlideNavigationContorllerAnimatorScale.h"
#import "SlideNavigationContorllerAnimatorScaleAndFade.h"
#import "SlideNavigationContorllerAnimatorSlideAndFade.h"

@implementation LeftMenuViewController

#pragma mark - UIViewController Methods -

- (id)initWithCoder:(NSCoder *)aDecoder
{
	self.slideOutAnimationEnabled = YES;
	
	return [super initWithCoder:aDecoder];
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.tableView.separatorColor = [UIColor lightGrayColor];
	
	UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"leftMenu.jpg"]];
	self.tableView.backgroundView = imageView;
}

#pragma mark - UITableView Delegate & Datasrouce -
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leftMenuCell"];
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"Browser";
            cell.imageView.image = [UIImage imageNamed:@"safari"];
            break;
            
        case 1:
            cell.textLabel.text = @"Downloads";
            cell.imageView.image = [UIImage imageNamed:@"download"];
            break;
            
        case 2:
            cell.textLabel.text = @"Files";
            cell.imageView.image = [UIImage imageNamed:@"explorer"];
            break;
            
        case 3:
            cell.textLabel.text = @"Search";
            cell.imageView.image = [UIImage imageNamed:@"search"];
            break;
            
        case 4:
            cell.textLabel.text = @"TopCharts";
            cell.imageView.image = [UIImage imageNamed:@"chart"];
            break;
        case 5:
            cell.textLabel.text = @"Player";
            cell.imageView.image = [UIImage imageNamed:@"player"];
            break;
        case 6:
            cell.textLabel.text = @"Playlists";
            cell.imageView.image = [UIImage imageNamed:@"playlist"];
            break;
        case 7:
            cell.textLabel.text = @"DropBox";
            cell.imageView.image = [UIImage imageNamed:@"dropbox"];
            break;
        case 8:
            cell.textLabel.text = @"Settings";
            cell.imageView.image = [UIImage imageNamed:@"setting"];
            break;
            
    }
    
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 20)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone"
                                                             bundle: nil];
    
    UIViewController *vc ;
    
    switch (indexPath.row)
    {
        case 0:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"SimpleBrowserViewController"];
            break;
            
        case 1:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"DownloadViewController"];
            break;
            
        case 2:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"DirectoryBrowserTableViewController"];
            break;
        
        case 3:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"ViewController1"];
            break;
        case 4:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"FriendsViewController"];
            break;
        case 5:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"FriendsViewController"];
            break;
        case 6:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"FriendsViewController"];
            break;
        case 7:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"DBBViewController"];
            break;
        case 8:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"SettingViewControllerTableViewController"];
            break;
            
    }
    
    [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc
                                                             withSlideOutAnimation:self.slideOutAnimationEnabled
                                                                     andCompletion:nil];

}


@end
