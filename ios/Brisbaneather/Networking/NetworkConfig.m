//
//  NetworkConfig.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 27/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "NetworkConfig.h"
#import <AFNetworking/AFNetworking.h>

@implementation NetworkConfig

+ (void)request:(NSString *)url parameters:(NSDictionary *)parametersDictionary successCompletion:(void (^)(id _Nullable))success failureCompletion:(void (^)(NSError * _Nullable))failure {
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager GET:url parameters:parametersDictionary progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
    
}

@end
