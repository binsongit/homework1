//
//  ScheduleManager.h
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScheduleManager : NSObject

@property (strong, nonatomic, readonly) NSArray *scheduleArry;

- (void) setSchedules:(id)schedules;

@end
