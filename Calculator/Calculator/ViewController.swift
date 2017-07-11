//
//  ViewController.swift
//  Calculator
//
//  Created by hoffman on 2017-07-04.
//  Copyright © 2017 hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userTyping: Bool = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit: String = sender.currentTitle!
        if userTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var model = CalculatorModel()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userTyping {
            model.setOperand(displayValue)
            userTyping = false
        }
        
        if let mathematicalSymbol: String = sender.currentTitle {
            model.performOperation(mathematicalSymbol)
        }
        if let result = model.result {
            displayValue = result
        }
    }
}
