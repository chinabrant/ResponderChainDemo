//
//  TableViewController.m
//  ResponderChainDemo
//
//  Created by brant on 2017/12/20.
//  Copyright © 2017年 Brant. All rights reserved.
//

#import "TableViewController.h"
#import "UIResponder+Router.h"
#import "EventProxy.h"

@interface TableViewController ()

@property (nonatomic, strong) EventProxy *eventProxy;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (IBAction)first:(id)sender {
    UIButton *btn = sender;
    [btn routerEventWithName:@"first" userInfo:@{ @"key" : @"来自第一个cell" }];
}

- (IBAction)second:(id)sender {
    UIButton *btn = sender;
    [btn routerEventWithName:@"second" userInfo:@{ @"key" : @"来自第二个cell" }];
}

- (IBAction)third:(id)sender {
    UIButton *btn = sender;
    [btn routerEventWithName:@"third" userInfo:@{ @"key" : @"来自第三个cell" }];
}

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self.eventProxy handleEvent:eventName userInfo:userInfo];
}

#pragma mark - lazy load

- (EventProxy *)eventProxy {
    if (!_eventProxy) {
        _eventProxy = [EventProxy new];
    }
    
    return _eventProxy;
}

@end
