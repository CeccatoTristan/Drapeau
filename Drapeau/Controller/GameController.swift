//
//  GameController.swift
//  Drapeau
//
//  Created by Sylvain Lasarte on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit

class GameController: UIViewController {

   
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionView: QuestionView!
    @IBOutlet weak var reponse1: UIButton!
    @IBOutlet weak var reponse2: UIButton!
    
    var game = Game()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let name = Notification.Name(rawValue: "QuestionLoaded")
        NotificationCenter.default.addObserver(self, selector: #selector(questionsLoaded), name: name, object: nil)
        
        startNewGame()
        
        if game.state == .ongoing {
            
        }
        
    }
    
       @IBAction func clicReponse(sender: UIButton) {
            
            if (sender == reponse1) {
                game.answerCurrentQuestion(with: reponse1.currentTitle!)
            }else if (sender == reponse2){
                game.answerCurrentQuestion(with: reponse1.currentTitle!)
            }
            
        }
    
    @objc func questionsLoaded(){
        newGameButton.isHidden = false
        
        questionView.title = game.currentQuestion.title
    }
    
    @IBAction func didTapNewGameButton() {
        startNewGame()
    }
    
    private func startNewGame(){
        newGameButton.isHidden = true
        
        questionView.title = "Loading..."
        questionView.style = .standard
        //scoreLabel = 0
        
        game.refresh()
    }
    
}
