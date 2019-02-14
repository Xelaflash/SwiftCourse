//
//  EditCredentialViewController.swift
//  Pwd Safe
//
//  Created by iFlash on 14/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class EditCredentialViewController: UITableViewController {
    
    @IBOutlet weak var ui_titlefield: UITextField!
    @IBOutlet weak var ui_loginField: UITextField!
    @IBOutlet weak var ui_passwordField: UITextField!
    @IBOutlet weak var ui_urlField: UITextField!
    
    @IBAction func dismissThisViewController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveAndReturnToListSegue" {
            print("weshould save the edits")
            if let title = ui_titlefield.text,
                let login = ui_loginField.text,
                let password = ui_passwordField.text,
                let url = ui_urlField.text {
                let credentialsManager = CredentialsManager()
                _ = credentialsManager.addcredentials(title: title, login: login, password: password, url: url)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}
