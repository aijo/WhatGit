//
//  APIClient.m
//  SmartChart
//
//  Created by Chanintorn Asavavichairoj on 12/18/2556 BE.
//  Copyright (c) 2556 Chanintorn Asavavichairoj. All rights reserved.
//

#import "APIClient.h"
#import <AFNetworking.h>

@implementation APIClient

+ (APIClient*)sharedAPI {
    static dispatch_once_t once;
    static APIClient *api;
    dispatch_once(&once, ^ { api = [[APIClient alloc] init]; });
    return api;
}

- (void)getIPAddress:(void (^)(NSString *result))block {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    [manager GET:@"http://ip.jsontest.com/"
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             //NSLog(@"Result: %@", responseObject);
             block(responseObject[@"ip"]);
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", [error localizedDescription]);
         }];
}

@end
