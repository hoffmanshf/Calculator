//
//  CalculatorModel.swift
//  Calculator
//
//  Created by hoffman on 2017-07-08.
//  Copyright © 2017 hoffman. All rights reserved.
//

import Foundation

struct CalculatorModel {
    
    private var accumulator: Double?
    
    func performOperation(_ symbol: String) {
        performOperation("π")
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    var result: Double? {
        get {
            return accumulator
        }
    }
}
