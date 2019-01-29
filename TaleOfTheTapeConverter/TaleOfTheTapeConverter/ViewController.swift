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
//  scrollView and contentView
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
//  segment control
    @IBOutlet weak var ui_inputValueType: UISegmentedControl!
    
// inputs fields
    @IBOutlet weak var ui_inputWeightValueField: UITextField!
    @IBOutlet weak var ui_inputHeightValueField: UITextField!
    @IBOutlet weak var ui_inputReachValueField: UITextField!
    
// outpout fields
    @IBOutlet weak var ui_outputLbsLabel: UILabel!
    @IBOutlet weak var ui_outputKgLabel: UILabel!
    
    @IBOutlet weak var ui_outputFtLabel: UILabel!
    @IBOutlet weak var ui_outputMetersLabel: UILabel!
    
    
    @IBOutlet weak var ui_outputInchLabel: UILabel!
    @IBOutlet weak var ui_outputCmLabel: UILabel!
    
//    getting the value of the inputs
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
    
    func getInputReachValue() -> Double? {
        let inputCentimeters:Double?
        if let inputStringReach:String = ui_inputReachValueField.text,
            let inputDoubleReach:Double = Double(inputStringReach) {
            switch ui_inputValueType.selectedSegmentIndex {
            case 0: // des inch
               inputCentimeters = UnitLength.inches.converter.baseUnitValue(fromValue: inputDoubleReach)
            case 1: // des cm
                inputCentimeters = UnitLength.centimeters.converter.baseUnitValue(fromValue: inputDoubleReach)
            default:
                inputCentimeters = nil
            }
        } else {
            inputCentimeters = nil
        }
        return inputCentimeters
        
    }
    
//    Convert the inputs
    func convertKgInputValue() {
        if let inputKilos = getInputKgValue() {
           ui_outputLbsLabel.text = "\(UnitMass.pounds.converter.value(fromBaseUnitValue: inputKilos).rounded(digits: 2)) lbs"
            ui_outputKgLabel.text = "\(inputKilos.rounded(digits: 2)) kg"
        } else {
            ui_outputLbsLabel.text = nil
            ui_outputKgLabel.text = nil
        }
    }
   
    func convertMetersInputValue() {
        if let inputMeters = getInputMetersValue() {
            ui_outputFtLabel.text = "\(UnitLength.feet.converter.value(fromBaseUnitValue: inputMeters).rounded(digits: 2)) feet"
            ui_outputMetersLabel.text = "\(inputMeters.rounded(digits: 3)) m"
        } else {
            ui_outputFtLabel.text = nil
            ui_outputMetersLabel.text = nil
        }
    }
    
    func convertCentimetersInputvalue() {
        if let inputCentimeters = getInputReachValue() {
            ui_outputInchLabel.text = "\(UnitLength.inches.converter.value(fromBaseUnitValue: inputCentimeters).rounded(digits: 2)) in"
            ui_outputCmLabel.text = "\(UnitLength.centimeters.converter.value(fromBaseUnitValue: inputCentimeters).rounded(digits: 2)) cm"
        } else {
            ui_outputInchLabel.text = nil
            ui_outputCmLabel.text = nil
        }
    }
    
//   responding to unit changes
    @IBAction func inputValueTypeChange() {
        convertKgInputValue()
        convertMetersInputValue()
        convertCentimetersInputvalue()
    }

// responding to input fields changes
    @IBAction func inputValueWeightchanged() {
        convertKgInputValue()
    }
    
    @IBAction func inputValueHeightChanged() {
        convertMetersInputValue()
    }
    
    @IBAction func inputValueReachChanged() {
        convertCentimetersInputvalue()
    }
    
}
