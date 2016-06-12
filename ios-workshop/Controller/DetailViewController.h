//
//  DetailViewController.h
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController, Todo;

@protocol DetailDelegate <NSObject>

- (void) detailView:(DetailViewController *)detailVC didDeleteTodo:(Todo *) todo;

@end

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *textTitle;
@property (weak, nonatomic) IBOutlet UISwitch *switchDone;
@property (weak, nonatomic) Todo *todo;
@property (weak, nonatomic) id<DetailDelegate> delegate;
@end
