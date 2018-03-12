//
//  Questions.swift
//  ExtranjeroAPP
//
//  Created by LETICIA SOUSA DE SIQUEIRA on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import Foundation

class Question{
    
    let questionImage : String
    let question : String
    let optionA : String
    let optionB : String
    let optionC : String
    let optionD : String
    let correctAnswer : Int
    
    init(image : String, quest : String, a : String, b : String, c : String, d : String, answer : Int){
        self.questionImage = image
        self.question = quest
        self.optionA = a
        self.optionB = b
        self.optionC = c
        self.optionD = d
        self.correctAnswer = answer
    }
    
    
}
