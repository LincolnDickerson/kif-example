//
//  EchoTests.m
//  kif-example
//
//  Created by Lincoln Dickerson on 12/18/14.
//  Copyright (c) 2014 Spidersoft. All rights reserved.
//

#import "EchoTests.h"

@implementation EchoTests

- (void)beforeAll {
}

- (void)testEcho {
    NSString *testString = @"Helloooo!";
    
    [tester clearTextFromAndThenEnterText:testString
           intoViewWithAccessibilityLabel:@"Echo Input Box"];
    
    [tester tapViewWithAccessibilityLabel:@"Echo Button"];
    
    UILabel *testLabel = (UILabel*)[tester waitForViewWithAccessibilityLabel:@"Echoed Text Label"];
    XCTAssertEqualObjects(testString, testLabel.text);
}
@end
