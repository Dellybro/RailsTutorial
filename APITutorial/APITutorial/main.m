//
//  main.m
//  APITutorial
//
//  Created by Travis Delly on 8/1/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTPHelper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HTTPHelper *helper = [[HTTPHelper alloc] init];
        NSDictionary *returnValue = [helper MethodGet:@"static" action:@"show" method:nil];
        
        
        // insert code here...
        NSLog(@"%@", returnValue);
    }
    return 0;
}
