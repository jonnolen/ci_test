//
//  DTTestObserver.m
//  CITest
//
//  Created by Jonathan Nolen on 11/16/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import "DTTestObserver.h"

@implementation DTTestObserver
+(void)load{
#if defined DEBUG
    NSLog(@"HIT THIS SHIT.");
    [[NSUserDefaults standardUserDefaults] setValue:@"XCTestLog,DTTestObserver"
                                             forKey:XCTestObserverClassKey];
#endif
}

- (void) stopObserving
{
    NSLog(@"BOOM GOES THE DYNAMITE!");
    [super stopObserving];
    UIApplication* application = [UIApplication sharedApplication];
    [application.delegate applicationWillTerminate:application];
}


@end
