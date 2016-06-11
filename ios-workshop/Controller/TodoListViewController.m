//
//  TodoListViewController.m
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import "TodoListViewController.h"
#import "Todo.h"

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
            [NSString stringWithFormat:@"Row %d", i];
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
    return self.todoList.count;
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
    
    Todo *todo = self.todoList[indexPath.row];
    cell.textLabel.text = todo.title;
    
    cell.textLabel.textColor =
        [todo isDone]
            ?[UIColor lightGrayColor]
            :[UIColor blackColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Todo *todo = self.todoList[indexPath.row];
    [todo toggleDone];
    
    [self.tableView reloadData];
}






@end
