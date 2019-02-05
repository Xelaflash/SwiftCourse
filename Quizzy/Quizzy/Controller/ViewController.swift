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
    
    //    recuperation taille (width) ecran
    var screenWidth = UIScreen.main.bounds.width
    
    
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
        
//        creation of gesture recognizer (le swipe)
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(dragQuestionView(_:)))
        questionView.addGestureRecognizer(panGestureRecognizer)
    }

     @objc func questionsLoaded() {
        activityIndicator.isHidden = true
        newGameButton.isHidden = false
        questionView.title = game.currentQuestion.title
    }
    
    @objc func dragQuestionView(_ sender: UIPanGestureRecognizer) {
        if game.state == .ongoing {
            switch sender.state {
            case .began, .changed:
                transformQuestionViewWith(gesture: sender)
            case .ended, .cancelled:
                answerQestion()
            default:
                break
            }
        }
    }
    
    private func transformQuestionViewWith(gesture: UIPanGestureRecognizer) {
//        translation de la questionView en fonction du toucher du user
        let translation = gesture.translation(in: questionView)
        let translationTransform = CGAffineTransform(translationX: translation.x, y: translation.y)
        
        //    calcul de l'angle fonction de la QuestionView translation
        let translationPercent = translation.x/(UIScreen.main.bounds.width / 2)
        let rotationAngle = (CGFloat.pi / 6) * translationPercent
        
//        transformation en utlisant l'angle de rotation
        let rotationTransform = CGAffineTransform(rotationAngle: rotationAngle)
        
//        combination des 2 transformations
        let transform = translationTransform.concatenating(rotationTransform)
        questionView.transform = transform
        
//        changer le style fonction de si x est positif (à droite) ou neg (à gauche)
        if translation.x > 0 {
            questionView.style = .correct
        } else {
            questionView.style = .incorrect
        }
    }
    
    private func answerQestion() {
        switch questionView.style {
        case .correct:
            game.answerCurrentQuestion(with: true)
        case .incorrect:
            game.answerCurrentQuestion(with: false)
        default:
            break
        }
        scoreLabel.text = "\(game.score) / 10"
    }
    
    private func showQuestionView() {
        questionView.transform = .identity
        questionView.style = .standard
        questionView.title = game.currentQuestion.title
    }
    

}

