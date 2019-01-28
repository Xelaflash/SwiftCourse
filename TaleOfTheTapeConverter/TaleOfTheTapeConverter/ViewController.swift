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
    @IBOutlet weak var ui_inputHeightValueField: UITextField!
    
// outpout fields
    @IBOutlet weak var ui_outpoutLbsLabel: UILabel!
    @IBOutlet weak var ui_outpoutKgLabel: UILabel!
    
    @IBOutlet weak var ui_outputFtLabel: UILabel!
    @IBOutlet weak var ui_outpoutMetersLabel: UILabel!
    
    
    
    
    
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

    
    func getInputMetersValue() -> Double? {
        let inputMeters:Double?
        
        if let inputStringHeight:String = ui_inputHeightValueField.text,
            let inputDoubleHeight:Double = Double(inputStringHeight) {
            switch ui_inputValueType.selectedSegmentIndex {
            case 0: // des foot
                inputMeters = UnitLength.feet.converter.baseUnitValue(fromValue: inputDoubleHeight)
            case 1: // des metres
                inputMeters = inputDoubleHeight
            default:
                inputMeters = nil
            }
        } else {
            inputMeters = nil
        }
        return inputMeters
    }
    
    
    
    func convertKgInputValue() {
        if let inputKilos = getInputKgValue() {
           ui_outpoutLbsLabel.text = "\(UnitMass.pounds.converter.value(fromBaseUnitValue: inputKilos).rounded(digits: 2)) lbs"
            ui_outpoutKgLabel.text = "\(inputKilos.rounded(digits: 2)) kg"
        } else {
            ui_outpoutLbsLabel.text = nil
            ui_outpoutKgLabel.text = nil
        }
    }
   
    func convertMetersInputValue() {
        if let inputMeters = getInputMetersValue() {
            ui_outputFtLabel.text = "\(UnitLength.feet.converter.value(fromBaseUnitValue: inputMeters).rounded(digits: 2)) feet"
            ui_outpoutMetersLabel.text = "\(inputMeters.rounded(digits: 2)) kg"
        } else {
            ui_outputFtLabel.text = nil
            ui_outpoutMetersLabel.text = nil
        }
    }
    
    
    
    @IBAction func inputValueTypeChange() {
        convertKgInputValue()
        convertMetersInputValue()
    }

    @IBAction func inputValueChanged() {
        convertKgInputValue()
        convertMetersInputValue()
    }
}

