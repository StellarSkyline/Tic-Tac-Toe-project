//
//  ViewController.swift
//  TicTacToeProject
//
//  Created by Seth Osric Torralba on 3/22/20.
//  Copyright © 2020 Seth Osric Torralba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var roundNum:Int = 0
    var playerTurn:Bool = true
    var player1Zones:[Int] = []
    var player2Zones:[Int] = []
    
    @IBOutlet weak var buttonZone1: UIButton!
    @IBOutlet weak var buttonZone2: UIButton!
    @IBOutlet weak var buttonZone3: UIButton!
    @IBOutlet weak var buttonZone4: UIButton!
    @IBOutlet weak var buttonZone5: UIButton!
    @IBOutlet weak var buttonZone6: UIButton!
    @IBOutlet weak var buttonZone7: UIButton!
    @IBOutlet weak var buttonZone8: UIButton!
    @IBOutlet weak var buttonZone9: UIButton!
    
    @IBOutlet weak var labelPhase: UILabel!
    
    
    @IBAction func buttonZone(_ sender: UIButton) {
        let buttonValue:String? = sender.titleLabel?.text
        print(buttonValue!)
        
        if(playerTurn == true) {
            sender.setBackgroundImage(UIImage(named: "graphic-O"), for: UIControl.State.normal)
            playerTurn = false
            labelPhase.text = "Player 2 - Phase"
            roundNum+=1
            player1Zones.append(Int(buttonValue!)!)
            
        } else {
            sender.setBackgroundImage(UIImage(named: "graphic-X"), for: UIControl.State.normal)
            playerTurn = true
            labelPhase.text = "Player 1 - Phase"
            roundNum+=1
            player2Zones.append(Int(buttonValue!)!)
        }
        
        //Check if Player 1 wins
        if(player1Zones.contains(1) && player1Zones.contains(2) && player1Zones.contains(3) ||
        player1Zones.contains(4) && player1Zones.contains(5) && player1Zones.contains(6) ||
        player1Zones.contains(7) && player1Zones.contains(8) && player1Zones.contains(9) ||
        player1Zones.contains(1) && player1Zones.contains(4) && player1Zones.contains(7) ||
        player1Zones.contains(2) && player1Zones.contains(5) && player1Zones.contains(8) ||
        player1Zones.contains(3) && player1Zones.contains(6) && player1Zones.contains(9) ||
        player1Zones.contains(1) && player1Zones.contains(5) && player1Zones.contains(9) ||
        player1Zones.contains(3) && player1Zones.contains(5) && player1Zones.contains(7)) {
            labelPhase.text = "Player 1 Wins!!!"
        }
        
        //Check if Player 2 wins
        if(player2Zones.contains(1) && player2Zones.contains(2) && player2Zones.contains(3) ||
        player2Zones.contains(4) && player2Zones.contains(5) && player2Zones.contains(6) ||
        player2Zones.contains(7) && player2Zones.contains(8) && player2Zones.contains(9) ||
        player2Zones.contains(1) && player2Zones.contains(4) && player2Zones.contains(7) ||
        player2Zones.contains(2) && player2Zones.contains(5) && player2Zones.contains(8) ||
        player2Zones.contains(3) && player2Zones.contains(6) && player2Zones.contains(9) ||
        player2Zones.contains(1) && player2Zones.contains(5) && player2Zones.contains(9) ||
        player2Zones.contains(3) && player2Zones.contains(5) && player2Zones.contains(7)) {
            labelPhase.text = "Player 2 Wins!!!"
        }
        
        //Check if game is a tie
        if(roundNum == 9) {
            labelPhase.text = "Game is a Tie!!!"
        }
    }
    
    
    @IBAction func buttonReset(_ sender: UIButton) {
        roundNum = 0
        playerTurn = true
        player1Zones = []
        player2Zones = []
        labelPhase.text = "Player 1 - Phase"
        buttonZone1.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone2.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone3.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone4.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone5.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone6.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone7.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone8.setBackgroundImage(nil, for: UIControl.State.normal)
        buttonZone9.setBackgroundImage(nil, for: UIControl.State.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
