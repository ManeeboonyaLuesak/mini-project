//
//  SecondViewController.swift
//  FUNMusic
//
//  Created by ict on 11/16/18.
//  Copyright © 2018 ict. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    @IBOutlet weak var questionCounte: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    //button
    
   
    var randomDiceIndex1 : Int = 0
    var diceArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
    
    var QuestionNumber : Int = 0
    var score1 : Int = 0
    var score2 : Int = 0
    
    
    
    @IBOutlet weak var Album: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
@IBAction func random(_ sender: UIButton) {
    changDiceFace()
}
    
    
    
    
    func changDiceFace() {
        randomDiceIndex1 = Int(arc4random_uniform(14))
        Album.image = UIImage(named: diceArray[randomDiceIndex1])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changDiceFace()
    }
//answer
    
  
    
    
        
        
    }

