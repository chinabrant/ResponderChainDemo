//
//  EventProxy.h
//  ResponderChainDemo
//
//  Created by brant on 2017/12/20.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 每个 viewController 应该对应自己的一个 event proxy
 */
@interface EventProxy : NSObject

- (void)handleEvent:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
