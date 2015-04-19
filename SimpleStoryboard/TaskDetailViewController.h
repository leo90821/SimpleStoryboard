//
//  TaskDetailViewController.h
//  SimpleStoryboard
//
//  Created by NiYao on 15/3/20.
//  Copyright (c) 2015年 NiYao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *taskText;
@property (copy, nonatomic) NSDictionary *selection;
@property (weak, nonatomic) id delegate;

@end
