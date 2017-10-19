//
//  ScheduleManager.m
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "ScheduleManager.h"
#import "Schedule.h"

@implementation ScheduleManager

- (void) setSchedules:(id)schedules {
    NSMutableArray *tmpSchedules = [NSMutableArray new];
    for (id schedule in [schedules objectForKey:@"schedules"]) {
        Schedule *scheduleObj = [[Schedule alloc] init];
        [scheduleObj setSchedule:schedule];
        
        [tmpSchedules addObject:scheduleObj];
    }
    _scheduleArry = tmpSchedules;
}

@end
