//
//  ViewController.swift
//  colorView
//
//  Created by iFlash on 20/12/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.textColor = .green
        colorView.backgroundColor = .black
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            quoteLabel.textColor = .yellow
            colorView.backgroundColor = .blue
        } else {
            quoteLabel.textColor = .purple
            colorView.backgroundColor = .red
        }
    }
    
}



