//
//  TaskDetailViewController.m
//  SimpleStoryboard
//
//  Created by NiYao on 15/3/20.
//  Copyright (c) 2015年 NiYao. All rights reserved.
//

#import "TaskDetailViewController.h"

@interface TaskDetailViewController ()

@end

@implementation TaskDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.taskText.text = self.selection[@"object"];
    [self.taskText becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if ([self.delegate respondsToSelector:@selector(setEditedSelection:)]) {
        [self.taskText endEditing:YES];
        NSIndexPath *indexPath = self.selection[@"indexPath"];
        id object = self.taskText.text;
        NSDictionary *editedSelection = @{@"object" : object,@"indexPath" : indexPath};
        [self.delegate setValue:editedSelection forKey:@"editedSelection"];
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
