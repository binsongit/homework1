//
//  JsonManager.m
//  homework_1
//
//  Created by apple on 2017/10/24.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import "JsonManager.h"

@implementation JsonManager

- (id) GetJsonObject:(NSString*)resourceName withType:(NSString*)resourceType {
    NSError *error = nil;
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:resourceName ofType:resourceType];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    
    return [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
}

- (void) ProcessJsonConfig {
    
}

@end
