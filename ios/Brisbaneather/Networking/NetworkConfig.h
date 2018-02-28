//
//  NetworkConfig.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 27/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkConfig : NSObject
+ (void)request:(NSString * _Nonnull)url parameters:(NSDictionary* _Nullable)parametersDictionary successCompletion:(void (^_Nullable)(id _Nullable data))success failureCompletion:(void (^_Nullable)(NSError* _Nullable error))failure;
@end
