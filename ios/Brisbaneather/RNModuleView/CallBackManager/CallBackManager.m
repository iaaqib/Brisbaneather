//
//  CallBackManager.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "CallBackManager.h"

@implementation CallBackManager
@synthesize delegate;

RCT_EXPORT_MODULE();

+ (instancetype)sharedInstance {
    static CallBackManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}


RCT_EXPORT_METHOD(receivedEvent)
{
    [[CallBackManager sharedInstance].delegate dataSuccessfullyParsed];
}


@end
