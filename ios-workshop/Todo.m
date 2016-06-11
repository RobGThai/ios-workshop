//
//  Todo.m
//  ios-workshop
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import "Todo.h"

@implementation Todo

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        self.title = title;
    }
    return self;
}

- (void) toggleDone {
    // '_' prefix access property directly without getter/setter
    _done = !self.done;
}

@end