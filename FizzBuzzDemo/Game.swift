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
    
    func play(_ move: String) -> Bool {
        score += 1
        let result = brain.check(score)
        
        if result == move {
            return true
        } else {
            return false
        }
        
    }
}
