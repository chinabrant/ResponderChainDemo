//
//  EventProxy.m
//  ResponderChainDemo
//
//  Created by brant on 2017/12/20.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "EventProxy.h"

@implementation EventProxy

- (void)handleEvent:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    if ([eventName isEqualToString:@"first"]) {
        NSLog(@"%@", userInfo[@"key"]);
    }
    else if ([eventName isEqualToString:@"second"]) {
        NSLog(@"%@", userInfo[@"key"]);
    }
    else if ([eventName isEqualToString:@"third"]) {
        NSLog(@"%@", userInfo[@"key"]);
    }
}

@end
