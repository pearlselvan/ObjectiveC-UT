//
//  ObjectiveCLearnTests.m
//  ObjectiveCLearnTests
//
//  Created by Muthu Selvan  on 9/20/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FirstViewController.h"
#import "CustomInit.h"
#import <OCMock/OCMock.h>

@interface ObjectiveCLearnTests : XCTestCase

@property(nonatomic,retain) FirstViewController *fstvc;
@property(nonatomic ,retain) CustomInit *cusinit;

@end

@implementation ObjectiveCLearnTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.fstvc = [[FirstViewController alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
}

-(void) testInstance {
    [self.fstvc displayVersion];
}

-(void) testReturn {
        NSLog(@"printing from parent class %@", [self.fstvc returnCode]);
}

-(void) testpassargumen {
     NSLog(@"testpassargumen %@", [self.fstvc sayHello:@"revanth"]);
    [self.fstvc sayHello:@"muthu"];
}

-(void) testCustominit {
    self.cusinit = [[CustomInit alloc] init]; // This will print stmt in custome init methond
    
}


-(void) testMockLogin{
//    id mockConnection = OCMClassMock([FirstViewController class]);
//    fstvc.name=mockConnection;
    
    
}

-(void) testmultipleparameter {
    // NSString *firstlast = [ helper firstname:@"selvan" lastname:@"sr"];
//    NSLog(@"first and last name %@ ",firstlast);
    int sum = [ self.fstvc num1:100 num2:20];
    NSLog(@"Sum %i",sum);
    XCTAssertTrue(3==3,@"Euqal");
    XCTAssertTrue(30==sum,@"Equal Check");
    
}

-(void) testDictionary {
    
    NSDictionary *mydict = @{@"key1":@"val1",@"key2":@"val2"};
    
    for(id key in mydict) {
        NSLog(@"Key:%@ Value:%@", key, mydict[key]);
    }
    
    
}

-(void) testArray {
    NSLog(@" >> Testing Array");
//    NSArray *myarray = [@"muthu",nil];
//    NSArray *myarray = [[NSArray alloc] initWithObjects:@"muthu", nil];
    NSArray *easy = @[@"apple",@"google",@"facebook"];
    NSLog(@"Array values in index 0 %@" ,[easy objectAtIndex:0]);
    
    // 1.Classical
    for (int i=0; i< [easy count]; i++){
        NSLog(@"Array with index [%d]:%@",i,easy[i]);
    }
    
    // 2.Fast iteration
    
    for (id object in easy) {
        // do something with object
        NSLog(@"printing array in loops %@" ,object);
        
    }
    
    // 3.Blocks
    [easy enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"[%lu]:%@",idx,obj);
        // Set stop to YES in case you want to break the iteration
    }];
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
