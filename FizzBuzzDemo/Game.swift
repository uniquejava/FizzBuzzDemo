//
//  Game.swift
//  FizzBuzzDemo
//
//  Created by cyper on 09/11/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import Foundation
class Game: NSObject {
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(_ move: String) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
        
    }
}
