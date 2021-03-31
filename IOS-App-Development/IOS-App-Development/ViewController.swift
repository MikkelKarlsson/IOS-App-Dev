//
//  ViewController.swift
//  IOS-App-Development
//
//  Created by Mikkel on 31/03/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerCard: UIImageView!
    @IBOutlet weak var computerCard: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    var playerScore = 0
    var computerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func dealPressed(_ sender: Any) {
        
        //This gives us numbers from 0 to 12, then we add 2
        let playerNumber = arc4random_uniform(13) + 2
        let computerNumber = arc4random_uniform(13) + 2
        
        
        // Set the image views
        playerCard.image = UIImage(named: "card" + String(playerNumber))
        computerCard.image = UIImage(named: "card" + String(computerNumber))
        
        // Update Score
        if playerNumber > computerNumber {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else if computerNumber > playerNumber {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
        }
        
    }
    
}

