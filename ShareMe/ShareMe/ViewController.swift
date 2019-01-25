//
//  ViewController.swift
//  ShareMe
//
//  Created by iFlash on 25/01/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textInputField: UITextView!
    @IBOutlet weak var ui_errorLabel: UILabel!
    
    @IBAction func ui_shareTypedText() {
        let inputedText:String = textInputField.text
        if inputedText.count > 0 {
            let shareController = UIActivityViewController(activityItems: [inputedText], applicationActivities : nil)
            shareController.excludedActivityTypes = [UIActivity.ActivityType.airDrop]
            present(shareController, animated: true, completion: nil)
            ui_errorLabel.text = ""
        } else {
            ui_errorLabel.text = "Nothing to share buddy"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textInputField.layer.borderWidth = 0.5
        self.textInputField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.textInputField.layer.cornerRadius = 5.0
    }
}

