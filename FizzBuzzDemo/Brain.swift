//
//  Brain.swift
//  FizzBuzzDemo
//
//  Created by cyper on 09/11/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import Foundation

class Brain: NSObject {
    func isDivisibleByThree(_ number: Int) -> Bool {
        return number % 3 == 0
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return number % 5 == 0
    }
}
