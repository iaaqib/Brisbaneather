//
//  ViewModel.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewModel : NSObject
- (void)initiateRequestWithSuccessCompletion:(void (^_Nullable)(id _Nullable finished))success failureCompletion:(void (^_Nullable)(NSError* _Nullable error))failure;
@end
