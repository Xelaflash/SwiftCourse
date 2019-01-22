//
//  ViewController.swift
//  hello world
//
//  Created by iFlash on 12/12/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var repeatLabel: UILabel!
    @IBOutlet weak var userTextInput: UITextField!
    
    @IBAction func repeatButtonTouched() {
        repeatLabel.text = userTextInput.text
        userTextInput.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

