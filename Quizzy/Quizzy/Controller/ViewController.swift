//
//  ViewController.swift
//  Qizzy
//
//  Created by iFlash on 30/01/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionView: QuestionView!
    
    var game = Game()
    
    @IBAction func didTapNewGameButton() {
        startNewGame()
    }
    
    private func startNewGame() {
        activityIndicator.isHidden = false
        newGameButton.isHidden = true
        questionView.title = "Loading..."
        questionView.style = .standard
        scoreLabel.text = " 0 / 10"
        
        game.refresh()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = Notification.Name(rawValue: "QuestionsLoaded")
        NotificationCenter.default.addObserver(self, selector: #selector(questionsLoaded), name: name, object: nil)
//         on lance une partie direct au load de l'app
        startNewGame()
    }
    
     @objc func questionsLoaded() {
        activityIndicator.isHidden = true
        newGameButton.isHidden = false
        questionView.title = game.currentQuestion.title
    }
}

