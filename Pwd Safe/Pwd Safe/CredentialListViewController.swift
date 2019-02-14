//
//  CredentialListViewController.swift
//  Pwd Safe
//
//  Created by iFlash on 14/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class CredentialListViewController: UITableViewController {
    private let _credentialsManager = CredentialsManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Password Safe"
    }
    
    @IBAction func unwindToCredentialList(segue:UIStoryboardSegue) {
        if segue.identifier == "saveAndReturnToListSegue" {
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _credentialsManager.getCredentialCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "credential-cell", for: indexPath)
        if let credentials = _credentialsManager.getCredential(atIndex: indexPath.row) {
            cell.textLabel?.text = credentials.title
        }
        // Configure the cell...
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if  let credVC = segue.destination as? CredentialViewController,
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row,
            let cred = _credentialsManager.getCredential(atIndex: selectedIndex) {
            credVC.setCredentials(cred)
        }
    }
}
