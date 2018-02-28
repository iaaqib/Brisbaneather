//
//  Utility.h
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface Utility : NSObject
+ (NSString*)getYesterdaysDate;
+ (void)showAlertWithTitle:(NSString*)title withMessage:(NSString*)message onSender:(UIViewController*)sender;
@end
