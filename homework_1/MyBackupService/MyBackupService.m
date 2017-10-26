//
//  MyBackupService.m
//  homework_1
//
//  Created by apple on 2017/10/25.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "MyBackupService.h"

@implementation MyBackupService

//-(void) setConfigManager:(ConfigManager *)configManager {
//    _configManager = configManager;
//}
//
//-(void) setScheduleManager:(ScheduleManager *)scheduleManager {
//    _scheduleManager = scheduleManager;
//}

-(id) init {
    self = [super init];
    if (self) {
//        _configManager = [[ConfigManager alloc] init];
//        _scheduleManager = [[ScheduleManager alloc] init];
        _managers = [[NSMutableArray alloc] init];
        [_managers addObject:[[ConfigManager alloc] init]];
        [_managers addObject:[[ScheduleManager alloc] init]];
    }
    return self;
}

-(void) ProcessJsonConfigs {
//    [_configManager ProcessJsonConfig];
//    [_scheduleManager ProcessJsonConfig];
    for (JsonManager *jsonMger in _managers) {
        [jsonMger ProcessJsonConfig];
    }
}

@end
