//
//  CallBackManager.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

/** Purpose of this class is to listen to the changes in the ReactNative code.
 **/


#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>
#import <React/RCTEventEmitter.h>

@protocol CallBackManagerDelegate
- (void)dataSuccessfullyParsed;

@end

@interface CallBackManager : NSObject<RCTBridgeModule>

@property (nonatomic, weak) id <CallBackManagerDelegate> delegate;

+ (instancetype)sharedInstance;

@end
