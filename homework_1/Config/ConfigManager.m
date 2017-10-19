//
//  ConfigManager.m
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "ConfigManager.h"
#import "Config.h"
@implementation ConfigManager

- (void) setConfigsManager:(id)configs {
    NSMutableArray *tmpConfigs = [NSMutableArray new];
    for (id config in [configs objectForKey:@"configs"]) {
        Config *configObj = [[Config alloc] init];
        [configObj setConfig:config];
        
        [tmpConfigs addObject:configObj];
    }
    
    _configs = tmpConfigs;
    _count = tmpConfigs.count;
}

@end
