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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}
