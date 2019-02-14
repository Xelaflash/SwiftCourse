//
//  ViewController.swift
//  Pwd Safe
//
//  Created by iFlash on 14/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit
import RealmSwift

class CredentialViewController: UIViewController {
    private var _credentials:Credentials?
    

    @IBOutlet weak var ui_loginLabel: UILabel!
    @IBOutlet weak var ui_passwordLabel: UILabel!
    @IBOutlet weak var ui_urlLabel: UILabel!
    
    
    func setCredentials(_ credentials:Credentials) {
        _credentials = credentials
    }
    
    override func viewWillAppear(_ animated: Bool) {
        displayDefaultData()
    }
    
    private func displayDefaultData() {
        if let cred = _credentials {
            self.title = cred.title
            ui_loginLabel.text = "Login : \(cred.login)"
            ui_urlLabel.text = "Website : \(cred.url)"
        }
    }
    
    @IBAction func displayPassword(_ sender: Any) {
        if let cred = _credentials {
            ui_passwordLabel.text = "Password : \(cred.password)"
        }
    }
    
    @IBAction func copyPasswordToClipBoard(_ sender: Any) {
        if let cred = _credentials {
            UIPasteboard.general.string = cred.password
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

