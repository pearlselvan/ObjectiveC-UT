//
//  ViewController.m
//  ObjectiveCLearn
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*)  getName {
    return @"muthu";
}

-(NSString*) getName:(NSString*) myname  {
    if ([myname isEqualToString:@"muthu"]) {
    return @"GRADE-A";
    } else if ([myname isEqualToString:@"selvan"]) {
        return @"GRADE-C";
    } else {
        return @"GRADE-C";
    }
    
}

-(BOOL) check {
    BOOL returnvalue = NO;
    NSString *userenter = [_username text ];
    NSString *passenter = [_password text];
    
    NSLog(@"username :  %@" ,userenter);
    NSLog(@"password :  %@" ,passenter);
    
    if ([userenter isEqualToString:@"m"] && [passenter isEqualToString:@"m"]) {
        NSLog(@"Valid username");
        [self showstatusScreen];
        returnvalue = YES;
    } else {
        NSLog(@"Invalid username");
    }
    
    
    return returnvalue;
}

-(void) showstatusScreen {
    
    NSLog(@"Showing status screen");
    
    self.status = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ShowStatus"];
    [self presentViewController:_status animated:YES completion:nil];
    
}

- (IBAction)showsecvc:(id)sender {
    
    NSLog(@"check :  %d" ,self.check);
//    NSLog(@"My grade %@",[self.getName @"muthu"]);
    
    NSString *myname = [self getName:@"muthu"];

    
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"welcome"
                                 message:@"Muthu"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Yes, please"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"No, thanks"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    
}




+(void) showme:(NSString*) myname  {
    //    NSLog(@"Alert message showing %@", alertmessage);
    NSString *alertTitle = @"Hello";
    NSString *alertMessage = @"Welcome muthu";
    UIAlertView *anAlert = [[UIAlertView alloc] initWithTitle:alertTitle message:alertMessage delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [anAlert show];
}


@end
