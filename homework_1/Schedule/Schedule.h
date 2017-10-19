//
//  Schedule.h
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Schedule : NSObject

@property (strong, nonatomic, readonly) NSString *ext;
@property (strong, nonatomic, readonly) NSString *time;
@property (strong, nonatomic, readonly) NSString *interval;

- (void) setSchedule:(id)schedule;

@end
