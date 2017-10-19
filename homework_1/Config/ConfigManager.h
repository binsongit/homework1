//
//  ConfigManager.h
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigManager : NSObject

@property (strong, nonatomic, readonly) NSArray *configs;

@property (readonly) NSUInteger count;

- (void) setConfigsManager:(id)configs;
@end
