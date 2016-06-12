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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchToggle:(id)sender {
    [self.todo toggleDone];
}



@end
