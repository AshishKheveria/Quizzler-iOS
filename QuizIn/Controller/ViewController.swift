//
//  ViewController.swift
//  QuizIn
//
//  Created by Ashish Kheveria on 20/01/21.
//  Copyright © 2021 Ashish Kheveria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    //Added another button and a corroponding outlet.
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var choiceC: UIButton!
    
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!   //text that button contains
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            
            sender.backgroundColor = UIColor.green
        } else {
            
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAnswers()
        choiceA.setTitle(answerChoices[0], for: .normal)
        choiceB.setTitle(answerChoices[1], for: .normal)
        choiceC.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        choiceA.backgroundColor = UIColor.clear
        choiceB.backgroundColor = UIColor.clear
        
        //Third button needs to be reset too.
        choiceC.backgroundColor = UIColor.clear
    }
    
}

