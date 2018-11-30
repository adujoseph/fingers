//
//  ViewController.swift
//  Fingers
//
//  Created by MAC on 28/11/2018.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var guessNumber: UITextField!
    
    @IBOutlet weak var displayResult: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        let number = (guessNumber.text)
        let correct = Int(arc4random_uniform(5) + 1)
        
        if Int(number!)! > 5{
          displayResult.text = "You are have exceed the limit of 5"
            
            if Int(number!) == Int(correct) {
                displayResult.text = "You are correct"
            } else {
                displayResult.text = "You are wrong, the correct answer is \(correct)"
            }
        }
        
        
       
    }
    
 
    
}

