//
//  GameTests.swift
//  FizzBuzzDemo
//
//  Created by cyper on 09/11/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import XCTest
@testable import FizzBuzzDemo

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testMoveIsWrong() {
        game.score = 1
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveRight(){
        game.score = 1
        let response = game.play("2")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let response = game.play("3")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play("1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play("1")
        XCTAssertNotNil(response.score)
    }
    
}
