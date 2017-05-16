//
//  main.m
//  unixtime2localtime
//
//  Created by miura on 2017/04/20.
//  Copyright © 2017年 miura. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        const char *hoge = argv[1];
        long unixTime = atol(hoge);
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:unixTime];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:60*60*9]];
        NSString *timeStr = [formatter stringFromDate:date];
        printf("%s\n", [timeStr UTF8String]);
        
    }
    return 0;
}
