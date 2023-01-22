//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        _handleTipButtonSelected(sender)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        _handleStepperValueChanged(sender)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        _handleCalculateButtonPressed()
    }
    
    // handle button selected
    func _handleTipButtonSelected(_ sender: UIButton) {
        
        let buttonId: String = sender.currentTitle!
        sender.isSelected = true
        
        if zeroPctButton.currentTitle! != buttonId {
            zeroPctButton.isSelected = false
        }
        
        if tenPctButton.currentTitle! != buttonId {
            tenPctButton.isSelected = false
        }
        
        if twentyPctButton.currentTitle! != buttonId {
            twentyPctButton.isSelected = false
        }
        
        billTextField.endEditing(true)
    }
    
    // handle stepper value changed
    func _handleStepperValueChanged(_ sender: UIStepper) {
        let value: Int = Int(sender.value)
        splitNumberLabel.text = String(value)
    }
    
    // handle calculate button pressed
    func _handleCalculateButtonPressed() {
        let selected: Bool = true
        
        let currentBill: Float = Float(billTextField.text!) ?? 0.0
        let selectedValue: Float
        let splitNumber: Int = Int(splitNumberLabel.text!)!
        
        switch selected {
        case zeroPctButton.isSelected == selected:
            selectedValue = 0.0
        case tenPctButton.isSelected == selected:
            selectedValue = 0.1
        default:
            selectedValue = 0.2
        }
        
        let bill = Bill(value: currentBill, tip: selectedValue, split: splitNumber)
        let result: Float = bill.calculateTip()
        
        print(result)
    }
}

