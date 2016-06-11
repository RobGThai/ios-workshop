//
//  Todo.h
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, assign, readonly, getter=isDone) BOOL done;

- (instancetype) initWithTitle:(NSString *) title;
- (void) toggleDone;

@end
