//
//  MyBackupService.h
//  homework_1
//
//  Created by apple on 2017/10/25.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConfigManager.h"
#import "ScheduleManager.h"

@interface MyBackupService : NSObject

//@property(strong, nonatomic) ConfigManager *configManager;
//@property(strong, nonatomic) ScheduleManager *scheduleManager;

@property(strong, nonatomic) NSMutableArray *managers;

-(void) ProcessJsonConfigs;

@end
