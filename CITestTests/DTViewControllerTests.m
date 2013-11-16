//
//  CITestTests.m
//  CITestTests
//
//  Created by Jonathan Nolen on 11/16/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DTViewController.h"

@interface DTViewControllerTests : XCTestCase{
    DTViewController *viewController;
}

@end

@implementation DTViewControllerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    viewController = [DTViewController new];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldNotThrowException
{
    XCTAssertNoThrow([viewController sayHello]);
}

@end
