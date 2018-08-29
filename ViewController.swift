//
//  ViewController.swift
//  DiceeApp
//
//  Created by tarek ait hamouda on 2018-08-28.
//  Copyright © 2018 tarek ait hamouda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceArr : Array = ["dice1","dice2","dice3","dice4","dice5","dice6"] // could use this array but not necessary in this case
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
 
    @IBAction func buttonPressed(_ sender: Any) {
        randomerDice()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randomerDice()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomerDice(){
        // update dice
        randomDiceIndex1 = Int(arc4random_uniform(6))+1
        randomDiceIndex2 = Int(arc4random_uniform(6))+1
        firstDice.image = UIImage(named: "dice\(randomDiceIndex1)")
        secondDice.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomerDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

