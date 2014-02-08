//
//  WhatGitTests.m
//  WhatGitTests
//
//  Created by Chanintorn Asavavichairoj on 2/7/2557 BE.
//  Copyright (c) 2557 Chanintorn Asavavichairoj. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XCTest+Async.h"
#import "APIClient.h"

@interface WhatGitTests : XCTestCase

@end

@implementation WhatGitTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    ASYNC_TEST_START;
    [[APIClient sharedAPI] getIPAddress:^(NSString *result){
        NSLog(@"%@",result);
        ASYNC_TEST_DONE;
    }];
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    ASYNC_TEST_END;
}

@end
