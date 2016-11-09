//
//  ViewController.swift
//  FizzBuzzDemo
//
//  Created by cyper on 09/11/2016.
//  Copyright © 2016 cyper tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game: Game?
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(_ move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }

}

