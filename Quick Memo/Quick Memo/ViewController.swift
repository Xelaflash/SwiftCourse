//
//  ViewController.swift
//  Quick Memo
//
//  Created by iFlash on 05/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource {
    
    let _goalManager = GoalManager()
    
    @IBOutlet weak var ui_newGoalTextField: UITextField!
    @IBOutlet weak var ui_goalsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui_newGoalTextField.delegate = self
        ui_goalsTableView.dataSource = self
    }
    
    func textFieldShouldReturn(_ ui_newGoalTextField: UITextField) -> Bool {
//        recuperation du texte
        if let goalText = ui_newGoalTextField.text {
            if let goalIndex = _goalManager.addGoal(withText: goalText) {
                ui_goalsTableView.insertRows(at: [IndexPath(row: goalIndex, section: 0)], with: .automatic)
            }
            ui_newGoalTextField.text = nil
        }
//    permet de perdre le focus et de masquer le clavier (puis pas de retour de ligne
        ui_newGoalTextField.resignFirstResponder()
        return false
    }
    
//    efface le champ texte et efface le clavier
    func textFieldShouldClear(_ ui_newGoalTextField: UITextField) -> Bool {
        ui_newGoalTextField.text = nil
        ui_newGoalTextField.resignFirstResponder()
        return false
    }

//    nb de lignes de la table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _goalManager.getGoalCount()
    }
    
//    creation d'une cellule
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "goal-cell", for: indexPath)
        cell.textLabel?.text = _goalManager.getGoal(atIndex: indexPath.row)
        return cell
    }
    
//    permet effacer un row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        suppresion ligne en db
        _goalManager.removeGoalAtIndex(atIndex: indexPath.row)
//        suppresion da la vue
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }

}

