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
    
    
    @IBAction func ShareButtonTouched(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: ["test"], applicationActivities : nil)
        present(shareController, animated: true, completion: nil)
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textInputField.layer.borderWidth = 0.5
        self.textInputField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.textInputField.layer.cornerRadius = 5.0
    }
}

