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
    var gameScore: Int? {
        didSet {
            if let gameScore = gameScore {
                numberButton.setTitle("\(gameScore)", for: .normal)
            }
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        
        guard let checkedGame = game else { return }
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(_ move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender {
        case numberButton:
            play(.Number)
        case fizzButton:
            play(.Fizz)
        case buzzButton:
            play(.Buzz)
        case fizzBuzzButton:
            play(.FizzBuzz)
        default:
            print("invalid selection")
        }
    }
}

