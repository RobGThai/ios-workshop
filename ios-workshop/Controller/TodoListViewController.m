//
//  TodoListViewController.m
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import "TodoListViewController.h"
#import "Model/Todo.h"

@interface TodoListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet
    UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *todoList;

@end

@implementation TodoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setup Data
    self.todoList = [[NSMutableArray alloc] init];
    
    for (int i = 0; i <= 100; i++) {
        NSString *title =
            [NSString stringWithFormat:@"Row %d", indexPath.row];
        Todo *todo = [[Todo alloc] initWithTitle: title];
        [self.todoList addObject: todo];
    }
    
    // Setup TableView
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:
    (UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:
(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TodoCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]
                    initWithStyle:UITableViewCellStyleDefault
                  reuseIdentifier: cellIdentifier];
    }
    
    cell.textLabel.text =
        [NSString stringWithFormat:@"Row %d", indexPath.row];
    
    return cell;
}

@end
