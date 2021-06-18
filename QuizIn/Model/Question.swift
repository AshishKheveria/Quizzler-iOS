//
//  Question.swift
//  QuizIn
//
//  Created by Ashish Kheveria on 20/01/21.
//  Copyright © 2021 Ashish Kheveria. All rights reserved.
//

import Foundation

struct Question {
    
    let text: String
    
    //Multiple choice questions have multiple answers, an Array of Strings would work for our quiz data.
    let answers: [String]
    
    //The initialiser needs to be updated to match the new multiple choice quiz data.
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
