//
//  ViewController.swift
//  CardWar
//
//  Created by Venkata Bhargav on 23/06/20.
//  Copyright © 2020 venkat bhargav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore: Int = 0
    var cpuScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func dealTapped(_ sender: UIButton) {
        
        let leftImageNo = Int.random(in: 2...14)
        let rightImageNo = Int.random(in: 2...14)
        
        print("Deal tapped")
        leftImageView.image = UIImage(named: "card\(leftImageNo)")
        rightImageView.image = UIImage(named: "card\(rightImageNo)")
        
        if leftImageNo > rightImageNo {
           
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        } else {
            
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }
    
}

