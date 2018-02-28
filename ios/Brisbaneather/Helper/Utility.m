//
//  Utility.m
//  Brisbaneather
//
//  Created by Aaqib Hussain on 28/2/18.
//  Copyright © 2018 Aaqib Hussain. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (NSString*)getYesterdaysDate {
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow: -(60.0f*60.0f*24.0f)];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM/dd";
    return [formatter stringFromDate:yesterday];
}


+ (void)showAlertWithTitle:(NSString*)title withMessage:(NSString*)message onSender:(UIViewController*)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:(UIAlertActionStyleDefault) handler:NULL];
    [alert addAction:okAction];
    [sender presentViewController:alert animated:YES completion:NULL];
}



@end
