//
//  ComposerViewController.h
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/12/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ComposerViewController, Todo;

@protocol ComposerDelegate <NSObject>

- (void)composer: (ComposerViewController *)composerVC
   didCreateTodo: (Todo *) todo;

@end

@interface ComposerViewController : UIViewController

@property (nonatomic, weak) id<ComposerDelegate> delegate;

@end
