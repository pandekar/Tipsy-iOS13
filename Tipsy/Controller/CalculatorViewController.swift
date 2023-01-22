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
        _handleButtonSelected(sender)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
    //handle button selected
    func _handleButtonSelected(_ sender: UIButton) {
        
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
    }
}

