//
//  FirstViewController.m
//  ObjectiveCLearn
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *) sayHello:(NSString*) myname {
    NSLog(@"Welcome : Hello %@ ",myname);
    return myname;
}

-(void) blockarray {
    NSArray *my = @[@"data",@"data2"];
    [my enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"print block %lu index : value");
        NSLog(@"Array iteration using block index - [%lu] values - %@",idx,obj);
    }];
    
}

+(void) showme:(NSString*) myname  {
    //    NSLog(@"Alert message showing %@", alertmessage);
    NSString *alertTitle = @"Hello";
    NSString *alertMessage = @"Welcome muthu";
    UIAlertView *anAlert = [[UIAlertView alloc] initWithTitle:alertTitle message:alertMessage delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [anAlert show];
}


-(void) blockcall {
    //What is happending ?
    void(^muthublock)(id,NSUInteger,BOOL*) = ^(id obj,NSUInteger idx,BOOL *stop) {
        NSLog(@"block example %@" ,(NSString*) obj);
    };
    
    BOOL stop;
    muthublock(@"muthu block passed",0,&stop);
}


- (NSString*) returnCode {
    return @"CA-95054";
}
-(void) displayVersion  {
    NSLog(@"Version is 11");
}

-(int) num1:(int) param1  num2:(int) param2 {
    return param1+param2;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
