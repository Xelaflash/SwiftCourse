//
//  ViewController.swift
//  Calculator
//
//  Created by iFlash on 22/01/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ui_currentNumberLabel: UILabel!
    
    @IBAction func divide() {
    }
    
    @IBAction func multiply() {
    }
    
    @IBAction func sum() {
    }
    
    @IBAction func substract() {
    }
    
    @IBAction func displayResult() {
    }
    
    @IBAction func resetValue() {
    }
    
    @IBAction func changeSign() {
    }
    
    @IBAction func applyPercent() {
    }
  
    @IBAction func digitButtonTouched(_ sender: UIButton) {
        ui_currentNumberLabel.text = "\(sender.tag)"
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

