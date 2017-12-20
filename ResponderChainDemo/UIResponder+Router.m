//
//  UIResponder+Router.m
//  ResponderChainDemo
//
//  Created by brant on 2017/12/20.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "UIResponder+Router.h"

@implementation UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

@end
