//
//  DetailViewController.m
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import "DetailViewController.h"
#import "Todo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Detail";
    self.textTitle.text = self.todo.title;
    
    self.switchDone.on = self.todo.isDone;
    
    UIBarButtonItem *actionBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(actionBarButtonClicked:)];
    
    [self.navigationItem setRightBarButtonItem:actionBarButtonItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) actionBarButtonClicked: (id) sender {
    UIAlertController *alert = [UIAlertController
        alertControllerWithTitle:@"My Alert"
                         message:@"This is an alert."
                                preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *deleteAction = [UIAlertAction
                                   actionWithTitle:@"Delete"
                                   style:UIAlertActionStyleDestructive
                                   handler:^(UIAlertAction * action) {
                                       [self handleDeleteTodo];
                                   }];
    
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"Cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction * action) {}];
    
    [alert addAction:deleteAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];

}

- (void) handleDeleteTodo {
    [self.delegate detailView:self didDeleteTodo:self.todo];
}

# pragma mark - Action

- (IBAction)switchToggle:(id)sender {
    [self.todo toggleDone];
}



@end
