//
//  TaskListTableViewController.h
//  SimpleStoryboard
//
//  Created by NiYao on 15/3/20.
//  Copyright (c) 2015年 NiYao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskListTableViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray *tasks;
@property (copy, nonatomic) NSDictionary *editedSelection;
@end
