//
//  JsonManager.h
//  homework_1
//
//  Created by apple on 2017/10/24.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonManager : NSObject

- (id) GetJsonObject:(NSString*)resourceName withType:(NSString*)resourceType;
- (void) ProcessJsonConfig;

@end
