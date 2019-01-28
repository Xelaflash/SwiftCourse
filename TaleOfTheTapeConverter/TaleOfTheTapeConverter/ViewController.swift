//
//  ViewController.swift
//  TaleOfTheTapeConverter
//
//  Created by iFlash on 28/01/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit
import Foundation

extension Double {
    func rounded(digits: Int) -> Double {
        let multiplier = pow(10.0, Double(digits))
        return (self * multiplier).rounded() / multiplier
    }
}

class ViewController: UIViewController {
//    segment control
    @IBOutlet weak var ui_inputValueType: UISegmentedControl!
    
// inputs fields
    @IBOutlet weak var ui_inputWeightValueField: UITextField!

// outpout fields
    @IBOutlet weak var ui_outpoutLbsLabel: UILabel!
    @IBOutlet weak var ui_outpoutKgLabel: UILabel!
    
    
    
    func getInputKgValue() -> Double? {
        let inputKilos:Double?
        
        if let inputStringWeight:String = ui_inputWeightValueField.text,
            let inputDoubleWeight:Double = Double(inputStringWeight) {

            switch ui_inputValueType.selectedSegmentIndex {
            case 0: // des lb
                inputKilos = UnitMass.pounds.converter.baseUnitValue(fromValue: inputDoubleWeight)
            case 1: // des kgs
                inputKilos = inputDoubleWeight
            default:
                inputKilos = nil
            }
        } else {
            inputKilos = nil
        }
        return inputKilos
    }
        
    func convertInputValue() {
        if let inputKilos = getInputKgValue() {
            
           ui_outpoutLbsLabel.text = "\(UnitMass.pounds.converter.value(fromBaseUnitValue: inputKilos).rounded(digits: 2)) lbs"
            ui_outpoutKgLabel.text = "\(inputKilos.rounded(digits: 2)) kg"

        } else {
            ui_outpoutLbsLabel.text = nil
            ui_outpoutKgLabel.text = nil
        }
    }
    
    
    @IBAction func inputValueTypeChange() {
        convertInputValue()
    }

    @IBAction func inputValueChanged() {
        convertInputValue()
    }
}

