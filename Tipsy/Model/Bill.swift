//
//  Bill.swift
//  Tipsy
//
//  Created by Pande Adhistanaya on 22/01/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Bill {
    let value: Float
    let tip: Float
    let split: Int
    
    init (value: Float = 0.0, tip: Float = 0.1, split: Int = 2) {
        self.value = value
        self.tip = tip
        self.split = split
    }
    
    func calculateTip () -> Float {
        return (value + (value * tip)) / Float(split)
    }
}
