//
//  APIClient.h
//  SmartChart
//
//  Created by Chanintorn Asavavichairoj on 12/18/2556 BE.
//  Copyright (c) 2556 Chanintorn Asavavichairoj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIClient : NSObject

+ (APIClient*)sharedAPI;
- (void)getIPAddress:(void (^)(NSString *result))block;

@end
