//
//  ViewController.swift
//  Calculator
//
//  Created by mkoltsov on 3/5/15.
//  Copyright (c) 2015 mkoltsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var realDisplay: UILabel!
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTYPINGNUMBER = false
    
    var operandStack = Array<Double>()
    
    var displayValue:Double{
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTYPINGNUMBER = false
        }
    }
    
    func performOperation(operation: (Double, Double) -> Double){
        if operandStack.count>=2{
            displayValue = operation(operandStack.removeLast(),operandStack.removeLast())
            enter()
        }
        
    }
    
    @IBAction func clear() {
        realDisplay.text! = "0"
        display.text! = "0"
        userIsInTheMiddleOfTYPINGNUMBER = false
        operandStack.removeAll(keepCapacity: false)
        
    }
    func performOperation(operation: Double -> Double){
        if operandStack.count>=2{
            displayValue = operation(operandStack.removeLast())
            enter()
        }
        
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        realDisplay.text = realDisplay.text! + operation
        if userIsInTheMiddleOfTYPINGNUMBER {
            enter()
        }
        
        switch operation {
        case "×" : performOperation {$0 * $1}
        case "÷":performOperation {$1 / $0}
        case  "+":performOperation {$0 + $1}
        case "−": performOperation {$0 - $1}
        case "√": performOperation {sqrt($0)}
        default: break
        }
    }
    
    //    func multiply(op1:Double, op2:Double) -> Double{
    //        return op1 * op2
    //    }
    @IBAction func enter() {
        userIsInTheMiddleOfTYPINGNUMBER = false
        operandStack.append(displayValue)
        println("operandStack = \(operandStack)")
        
    }
    @IBAction func appendDigit(sender: UIButton)  {
        let digit =  sender.currentTitle!
        
        if userIsInTheMiddleOfTYPINGNUMBER {
            display.text = display.text! + digit
            realDisplay.text = realDisplay.text! + digit
        }
        else{
            display.text = digit
            realDisplay.text = realDisplay.text! + digit
            userIsInTheMiddleOfTYPINGNUMBER = true
        }
    }
}

