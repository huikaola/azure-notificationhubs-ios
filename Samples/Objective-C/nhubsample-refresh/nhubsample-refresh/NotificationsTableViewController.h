// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#import <UIKit/UIKit.h>
#import <WindowsAzureMessaging/WindowsAzureMessaging.h>
#import "NotificationTableViewCell.h"
#import "NotificationDetailsViewController.h"

@interface NotificationsTableViewController : UITableViewController
@property (nonatomic) NSMutableArray<MSNotificationHubMessage *> *notifications;

-(void) addNotification:(MSNotificationHubMessage *) notification;
@end

