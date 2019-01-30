//
//  Game.swift
//  Quizzy
//
//  Created by iFlash on 30/01/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import Foundation

class Game {
    var score:Int = 0
    var questions = [Question]()
    
//    creation de l'état du jeu 2 cas possible
    enum State {
        case ongoing, over
    }
//    creation de la propriété state de type state qui prend la valeur on going par défaut
    var state: State = .ongoing
    
    private var currentIndex:Int = 0
    
    var currentQuestion: Question {
        return questions[currentIndex]
    }
    
    
    func answerCurrentQuestion(with answer: Bool)  {
        if (currentQuestion.isCorrect == answer) || (!currentQuestion.isCorrect == !answer) {
            score += 1
            goToNextQuestion()
        }
    }
    
    private func goToNextQuestion() {
        if currentIndex < questions.count - 1 {
            currentIndex += 1
        } else {
            finishGame()
        }
    }
    
    private func finishGame() {
        state = .over
    }
    
    func refresh() {
        score = 0
        currentIndex = 0
        state = .over
//        Ici, on appelle donc la méthode get du QuestionManager et on lui passe en paramètre la méthode receiveQuestions. Cela signifie que lorsque les questions sont chargées, la méthode receiveQuestions est appelée.
        QuestionManager.shared.get(completionHandler: receiveQuestions)
    }
    
//    Donc nous allons créer une méthode dans notre classe Game que l'on va appeler receiveQuestion dont le rôle va être de gérer les questions reçues. Cette fonction va être du type ([Question]) -> ()
    private func receiveQuestions(_ questions: [Question]) {
        self.questions = questions
        state = .ongoing
        print(questions)
    }
}
