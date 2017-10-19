//
//  Config.h
//  homework_1
//
//  Created by binsonchang on 2017/10/18.
//  Copyright © 2017年 binsonchang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject

@property (strong, nonatomic, readonly) NSString *ext;
@property (strong, nonatomic, readonly) NSString *location;
@property (nonatomic, readonly) BOOL subDirectory;
@property (strong, nonatomic, readonly) NSString *unit;
@property (nonatomic, readonly) BOOL remove;
@property (strong, nonatomic, readonly) NSString *handler;
@property (strong, nonatomic, readonly) NSString *destination;
@property (strong, nonatomic, readonly) NSString *dir;
@property (strong, nonatomic, readonly) NSString *connectionString;

- (void) setConfig:(id)config;

@end
