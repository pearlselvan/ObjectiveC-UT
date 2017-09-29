//
//  SwiftUT.swift
//  ObjectiveCLearnTests
//
//  Created by Muthu Selvan  on 9/26/17.
//  Copyright © 2017 Muthu Selvan . All rights reserved.
//

import XCTest
import OCMock
//#import <OCMock/OCMock.h>


class SwiftUT: XCTestCase {
    let instance = FirstViewController()
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
       
    }
    
    
    func testInstance() {
        print (instance.returnCode())
    }
    
    func testReturn() {
        print ("Going to call objective c ")
        instance.displayVersion()
    }
    
    func testAddTwoNumbers() {
        print ("Adding Two  \(instance.num1(10, num2: 20))")
    }
    
    func testMock() {
            //ParentOverride *p = [ ParentOverride new];
//        let p = ParentOverride()
//        let appsMgrMock=OCMPartialMock(ParentOverride.init())
//        OCMVeri
        
        
        
        
        
        
        
    }
    
    func testCustomInit() {
        let custom_init_instance = CustomInit() // init methond will be called 
    }
    
    func testargument(){
        print (instance.sayHello("google-muthu"))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
