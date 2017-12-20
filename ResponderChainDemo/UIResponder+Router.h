//
//  UIResponder+Router.h
//  ResponderChainDemo
//
//  Created by brant on 2017/12/20.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
