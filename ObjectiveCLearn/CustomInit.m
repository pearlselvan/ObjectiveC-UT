//
//  CustomInit.m
//  ObjectiveCLearn
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import "CustomInit.h"

@interface CustomInit ()

@end

@implementation CustomInit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Called from custom init methond");
    }
    return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
