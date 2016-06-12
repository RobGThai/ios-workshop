//
//  ComposerViewController.m
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/12/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import "ComposerViewController.h"
#import "Todo.h"

@interface ComposerViewController ()
@property (weak, nonatomic) IBOutlet UIButton *createButton;
@property (weak, nonatomic) IBOutlet UITextField *textTitle;

@end

@implementation ComposerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Create Todo";
    
    [self.textTitle becomeFirstResponder];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]
        initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                             target:self
                             action:@selector(cancelButtonClicked:)];
    
    [self.navigationItem setLeftBarButtonItem:cancelButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) createTodo:(id)sender {
    NSString *text = self.textTitle.text;
    Todo *todo = [[Todo alloc] initWithTitle:text];
    
    [self.delegate composer:self didCreateTodo: todo];
}

- (void) cancelButtonClicked:(id)sender {
    
    [[self presentingViewController] dismissViewControllerAnimated:YES
                                                        completion:nil];
}

@end
