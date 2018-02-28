//
//  RNCardViewModule.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "RNCardViewModule.h"


@implementation RNCardViewModule
@synthesize bridge;

+ (instancetype)sharedInstance {
    static RNCardViewModule *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}
- (RCTBridge*)createBridge {
    if (!bridge){
    bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    }
    return bridge;
}

- (RCTRootView*)viewForModuleName:(NSString*)name withInitialProperties:(NSDictionary*)initialProperties{
    RCTBridge *bridge = [self createBridge];
    RCTRootView *view = [[RCTRootView alloc] initWithBridge:bridge moduleName:name initialProperties:initialProperties];
    return view;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios&dev=true&minify=false"];
    return jsCodeLocation;
    
}


@end
