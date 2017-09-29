//
//  ViewController.h
//  ObjectiveCLearn
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShowStatus.h"
@interface ViewController : UIViewController
@property (nonatomic, strong) ShowStatus *status;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
-(BOOL) check;


-(NSString*) getName:(NSString*) myname ;

+(void) showme:(NSString*) alertmessage;
@end

