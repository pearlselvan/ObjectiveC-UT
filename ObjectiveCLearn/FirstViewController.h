//
//  FirstViewController.h
//  ObjectiveCLearn
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
-(void) displayVersion ;

- (NSString*) returnCode;

- (NSString *) sayHello:(NSString*) myname;

-(int) num1:(int) param1  num2:(int) param2;

-(void) blockarray;

-(void) blockcall;

-(NSString*) getName:(NSString*) myname ;

+(void) showme:(NSString*) alertmessage;

@end
