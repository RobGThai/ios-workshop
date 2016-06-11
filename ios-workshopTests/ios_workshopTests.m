//
//  ios_workshopTests.m
//  ios-workshopTests
//
//  Created by Poohdish Rattanavijai on 6/11/16.
//  Copyright © 2016 Poohdish Rattanavijai. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Todo.h"

@interface ios_workshopTests : XCTestCase

@end

@implementation ios_workshopTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void) testInitializeWithoutParam{
    Todo *todo = [Todo new];
    XCTAssertNotNil(todo);
}

- (void) testInitialize{
    Todo *todo = [[Todo alloc] initWithTitle: @"My Title"];
    
    XCTAssertEqual(todo.title, @"My Title");
}

- (void) testDoneAction{
    Todo *todo = [[Todo alloc] initWithTitle: @"My Title"];
    
    XCTAssertFalse(todo.isDone);
    [todo toggleDone];
    XCTAssertTrue(todo.isDone);
}

@end
