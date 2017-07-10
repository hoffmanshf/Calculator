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
    
    @IBAction func performOperation(_ sender: UIButton) {
        userTyping = false
        let mathematicalSymbol: String = sender.currentTitle!
        switch mathematicalSymbol {
        case "π":
            displayValue = Double.pi
        case "√":
            displayValue = sqrt(displayValue)
        default:
            break
        }
    }
}
