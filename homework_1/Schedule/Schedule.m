//
//  Schedule.m
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "Schedule.h"

@implementation Schedule

- (void) setSchedule:(id)schedule {
    _ext = [schedule objectForKey:@"ext"];
    _time = [schedule objectForKey:@"time"];
   _interval = [schedule objectForKey:@"interval"];
}

@end
