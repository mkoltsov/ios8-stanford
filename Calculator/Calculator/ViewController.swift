//
//  ViewController.swift
//  Calculator
//
//  Created by mkoltsov on 3/5/15.
//  Copyright (c) 2015 mkoltsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTYPINGNUMBER = false
    
    @IBAction func appendDigit(sender: UIButton)  {
        let digit =  sender.currentTitle!
        
        if userIsInTheMiddleOfTYPINGNUMBER {
            display.text = display.text! + digit}
        else{
            display.text = digit
            userIsInTheMiddleOfTYPINGNUMBER = true
        }
    }
}

