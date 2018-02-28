//
//  ViewController.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 27/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTRootView.h>
#import "RNCardViewModule.h"
#import "CallBackManager.h"
#import "ViewModel.h"
#import "Utility.h"


@interface ViewController : UIViewController<CallBackManagerDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIButton *loadWeatherOutlet;


@end

