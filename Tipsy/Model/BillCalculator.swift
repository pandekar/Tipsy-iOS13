//
//  BillCalculator.swift
//  Tipsy
//
//  Created by Pande Adhistanaya on 22/01/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct BillCalculator {
    
    var bill: Bill?
    
    func getBillValue() -> Float {
        return bill?.value ?? 0.0
    }
    
    func getTipPercentage() -> String {
        let tip: Float = bill?.tip ?? 0.1
        let tipPercentage: Int = Int(tip * 100)
        return String(tipPercentage)
    }
    
    func getSplitNumber() -> String {
        return String(bill?.split ?? 2)
    }
    
    func getCalculatedTip() -> String {
        return String(bill?.finalValue ?? 0.0)
    }
    
    mutating func calculateTip(value: Float, tip: Float, split: Int) {
        let calculatedTip: Float = (value + (value * tip)) / Float(split)
        self.bill = Bill(value: calculatedTip, tip: tip, split: split, finalValue: calculatedTip)
    }
}
