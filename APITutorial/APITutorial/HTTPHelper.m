//
//  HTTPHelper.m
//  APITutorial
//
//  Created by Travis Delly on 8/1/15.
//  Copyright (c) 2015 Travis Delly. All rights reserved.
//

#import "HTTPHelper.h"

@interface HTTPHelper()

@property NSString *baseURL;

@end

@implementation HTTPHelper

-(id)init{
    self = [super init];
    if(self){
        _baseURL = @"http://localhost:3000/api/v1";
    }
    return self;
}

-(id)MethodGet:(NSString*)controller action:(NSString*)action method:(NSString*)method{
    NSString *finalURL;
    if(method == nil){
        
        finalURL = [NSString stringWithFormat:@"%@/%@/%@", _baseURL, controller, action];
        
    } else {
        
        finalURL = [NSString stringWithFormat:@"%@/%@/%@%@", _baseURL, controller, action, method];
        
    }
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:finalURL]];
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
    if(error == nil){
        NSError *jsonError;
        NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
        return json;
    }
    
    return nil;
    
}

@end
