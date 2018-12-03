//
//  Game.swift
//  Drapeau
//
//  Created by Sylvain Lasarte on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    
    private var questions = [Question]()
    private var currentIndex = 0
    
    var state: State = .ongoing
    
    enum State {
        case ongoing, over
    }
    
    var currentQuestion: Question {
        return questions[currentIndex]
    }
    
    func refresh() {
        score = 0
        currentIndex = 0
        state = .over
        
        //chargement des questions
        Question.init(title: "FRANCE", reponse: "France")
        
        state = .ongoing
        
        let name = Notification.Name(rawValue: "QuestionLoaded")
        let notification = Notification(name: name)
        NotificationCenter.default.post(notification)
    }
    
    func answerCurrentQuestion(with answer: String) {
        if (currentQuestion.reponse == answer) {
            score += 1
        }
        goToNextQuestion()
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
}
