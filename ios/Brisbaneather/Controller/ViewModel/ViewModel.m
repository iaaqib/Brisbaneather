//
//  ViewModel.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "ViewModel.h"
#import "NetworkConfig.h"
#import "Constants.h"
#import "Utility.h"

@implementation ViewModel

- (void)initiateRequestWithSuccessCompletion:(void (^_Nullable)(id _Nullable finished))success failureCompletion:(void (^_Nullable)(NSError* _Nullable error))failure {
    
    NSString *url = [NSString stringWithFormat:@"%@%@%@/%@", API_URL, API_LOCATION_ROUTE ,BRISBANE_WOEID , [Utility getYesterdaysDate]];
    [NetworkConfig request:url parameters:NULL successCompletion:^(id  _Nullable data) {
        NSDictionary *response = @{@"response":data, @"base_url":API_URL};
        success(response);
    } failureCompletion:^(NSError * _Nullable error) {
        failure(error);
    }];
}



@end
