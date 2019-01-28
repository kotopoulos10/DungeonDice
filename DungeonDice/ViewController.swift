//
//  ViewController.swift
//  DungeonDice
//
//  Created by Tom Kotopoulos on 1/28/19.
//  Copyright © 2019 Tom Kotopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rolledMessage: UILabel!
    var roll: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        let rollUpTo = sender.tag
        roll = Int.random(in: 1...rollUpTo)
        rolledMessage.text = "You rolled a \(rollUpTo) sided dice and got a \(roll)"
    }
    
}

