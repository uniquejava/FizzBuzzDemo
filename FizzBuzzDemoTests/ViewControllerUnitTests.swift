//
//  ViewControllerUnitTests.swift
//  FizzBuzzDemo
//
//  Created by cyper on 09/11/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import XCTest
@testable import FizzBuzzDemo

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        
        _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasGame(){
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testWrongMoveScoreNotIncremented() {
        viewController.play(.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(.Number)
        viewController.play(.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
        
    }
    
    func testBuzzIncrementsScore() {
        viewController.game?.score = 4
        viewController.play(.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        viewController.play(.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }

}
