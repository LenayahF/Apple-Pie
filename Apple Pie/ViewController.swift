//
//  ViewController.swift
//  Apple Pie
//
//  Created by 11k on 10/23/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]

    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    var currentGame: Game!

  
    func newRound() {
    let newWord = listOfWords.removeFirst()
    currentGame = Game(word: newWord, incorrectMovesRemaining:
    incorrectMovesAllowed)
    updateUI()
    }

    func updateUI() {
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")

    }






    
}

