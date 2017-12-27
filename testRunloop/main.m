//
//  main.m
//  testRunloop
//
//  Created by dahuoshi on 14/12/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSRunLoop *loop = [NSRunLoop currentRunLoop];
        //新创建的loop，是没有source、timer、和observer的，如果不添加timer，runloop创建后会自动销毁。
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 repeats:YES block:^(NSTimer * _Nonnull timer) {
            NSLog(@"timer is running...");
        }];
        [timer fire];
        [loop runUntilDate:[NSDate distantFuture]];
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

