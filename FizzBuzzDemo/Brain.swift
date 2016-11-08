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
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(_ number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
}
