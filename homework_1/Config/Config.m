//
//  Config.m
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "Config.h"

@implementation Config

- (void) setConfig:(id)config {
    _ext = [config objectForKey:@"ext"];
    _location = [config objectForKey:@"location"];
    _subDirectory = [[config objectForKey:@"subDirectory"] boolValue];
    _unit = [config objectForKey:@"unit"];
    _remove = [[config objectForKey:@"remove"] boolValue];
    _handler = [config objectForKey:@"handler"];
    _destination = [config objectForKey:@"destination"];
    _dir = [config objectForKey:@"dir"];
    _connectionString = [config objectForKey:@"connectionString"];
}

@end
