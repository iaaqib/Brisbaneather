//
//  ViewController.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 27/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (nonatomic, retain) ViewModel *model;
@end

@implementation ViewController
@synthesize model;

- (void)viewDidLoad {
    [super viewDidLoad];
    model = [[ViewModel alloc] init];

}

- (void)setUpReactNativeCardView:(id)dataAsProps {
    
    [[CallBackManager sharedInstance] setDelegate:self];
    RCTRootView *rootView = [[RNCardViewModule sharedInstance] viewForModuleName:@"Brisbaneather" withInitialProperties:dataAsProps];
    rootView.frame = self.view.frame;
    rootView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:rootView];
    
}

- (IBAction)loadWeatherAction:(UIButton *)sender {
    
    __weak typeof(self) weakself = self;
    [self.activityIndicator startAnimating];
    [sender setHidden:YES];
    [model initiateRequestWithSuccessCompletion:^(id  _Nullable data) {
        if(data){
            [weakself setUpReactNativeCardView:data];
        }
    } failureCompletion:^(NSError * _Nullable error) {
        [weakself.activityIndicator stopAnimating];
        [sender setHidden:NO];
        [Utility showAlertWithTitle:@"Something went wrong." withMessage:@"Some error occured.\nPlease try again." onSender:weakself];
    }];
    
}

- (void)dataSuccessfullyParsed {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.activityIndicator stopAnimating];
    });
   
}


@end
