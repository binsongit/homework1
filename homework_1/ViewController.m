//
//  ViewController.m
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "ViewController.h"
#import "ConfigManager.h"
#import "Config.h"
#import "ScheduleManager.h"
#import "Schedule.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //configs
    ConfigManager *configMag = [[ConfigManager alloc] init];
    id configAll = [self getJsonValue:@"Configs" withType:@"json"];
    [configMag setConfigsManager:configAll];
    
    
    
    //schedules
    ScheduleManager *scheduleMag = [[ScheduleManager alloc] init];
    id scheduleAll = [self getJsonValue:@"Schedules" withType:@"json"];
    [scheduleMag setSchedules:scheduleAll];
    
    
    //print
    [self printConfig:configMag];
    [self printSchedule:scheduleMag];
    
}

-(id) getJsonValue:(NSString*)resourceName withType:(NSString*)resourceType {
    NSError *error = nil;
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:resourceName ofType:resourceType];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    
    return [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
}

- (void) printConfig:(ConfigManager *)configManager {
    for (int i=0; i<configManager.configs.count; i++) {
        Config *configObj = [configManager.configs objectAtIndex:i];
        NSLog(@"\n===============================================\nconfig[%d]\next: %@\nlocation: %@\nsubDirectory: %d\nunit: %@\nremove: %d\nhandler: %@\ndestination: %@\ndir: %@\nconnectionString: %@\n===============================================\n",i,configObj.ext,configObj.location,configObj.subDirectory,configObj.unit,configObj.remove,configObj.handler,configObj.destination,configObj.dir,configObj.connectionString);
    }
}

- (void) printSchedule:(ScheduleManager *)scheduleManager {
    for (int i=0; i<scheduleManager.scheduleArry.count; i++) {
        Schedule *scheduleObj = [scheduleManager.scheduleArry objectAtIndex:i];
        NSLog(@"\n===============================================\nschedule[%d]\next: %@\ntime: %@\ninerval: %@\n===============================================\n",i,scheduleObj.ext,scheduleObj.time,scheduleObj.interval);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
