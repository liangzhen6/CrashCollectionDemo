//
//  MyUncaughtExceptionHandler.m
//  CrashDemo
//
//  Created by tony on 2019/2/13.
//  Copyright © 2019年 Morse. All rights reserved.
//

#import "MyUncaughtExceptionHandler.h"

void UncaughtExceptionHandler(NSException * exception) {
    NSArray * symbolsArr = [exception callStackSymbols];
    NSString * reason = [exception reason]; // // 崩溃的原因  可以有崩溃的原因(数组越界,字典nil,调用未知方法...) 崩溃的控制器以及方法
    NSString * name = [exception name];
    NSString * exceptionLog = [NSString stringWithFormat:@"========异常错误报告========\nname:%@\nreason:\n%@\ncallStackSymbols:\n%@\n",name,reason,[symbolsArr componentsJoinedByString:@"\n"]];
    
    NSString * documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString * path = [documentPath stringByAppendingPathComponent:@"exception.txt"];
    NSError * readOld;
    NSString * oldException = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&readOld];
    if (!readOld && oldException.length) {
        exceptionLog = [NSString stringWithFormat:@"%@%@", oldException, exceptionLog];
    }
    
    BOOL isOk = [exceptionLog writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@\n isOk---%d", exceptionLog, isOk);
    
}


@implementation MyUncaughtExceptionHandler
+ (void)setDefaultHandler {
    NSSetUncaughtExceptionHandler(&UncaughtExceptionHandler);
}

//+ (NSUncaughtExceptionHandler *)getHandler {
//    return NSGetUncaughtExceptionHandler();
//}
//
//+ (void)TakeException:(NSException *)exception {
//    NSArray * arr = [exception callStackSymbols];
//    NSString * reason = [exception reason]; // // 崩溃的原因  可以有崩溃的原因(数组越界,字典nil,调用未知方法...) 崩溃的控制器以及方法
//    NSString * name = [exception name];
//    NSString * url = [NSString stringWithFormat:@"========异常错误报告========\nname:%@\nreason:\n%@\ncallStackSymbols:\n%@",name,reason,[arr componentsJoinedByString:@"\n"]];
//    NSLog(@"%@", url);
//}

@end
