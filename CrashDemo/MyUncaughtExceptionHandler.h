//
//  MyUncaughtExceptionHandler.h
//  CrashDemo
//
//  Created by tony on 2019/2/13.
//  Copyright © 2019年 Morse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyUncaughtExceptionHandler : NSObject

+ (void)setDefaultHandler;

//+ (NSUncaughtExceptionHandler *)getHandler;
//+ (void)TakeException:(NSException *) exception;

@end
