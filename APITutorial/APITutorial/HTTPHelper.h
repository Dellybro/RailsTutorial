//
//  HTTPHelper.h
//  APITutorial
//
//  Created by Travis Delly on 8/1/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPHelper : NSObject

-(id)MethodGet:(NSString*)controller action:(NSString*)action method:(NSString*)method;

@end
