//
//  RNCardViewModule.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

/** Purpose of this class is to do all the setup in loading the ReactNative
 Module.
 **/

#import <Foundation/Foundation.h>
#import <React/RCTBridgeDelegate.h>
#import <React/RCTRootView.h>


@interface RNCardViewModule : NSObject<RCTBridgeDelegate>

@property (nonatomic) RCTBridge *bridge;

+ (instancetype)sharedInstance;
- (RCTBridge*)createBridge;
- (RCTRootView*)viewForModuleName:(NSString*)name withInitialProperties:(NSDictionary*)initialProperties;

@end
