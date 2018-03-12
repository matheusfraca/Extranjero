//
//  QuestionBank.swift
//  ExtranjeroAPP
//
//  Created by LETICIA SOUSA DE SIQUEIRA on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]()
    
    init(){
        list.append(Question(image: "maca", quest: "Qual o nome dessa fruta", a: "maca", b: "banana", c: "morango", d: "pera", answer: 1))
        list.append(Question(image: "banana", quest: "Qual o nome dessa fruta", a: "melancia", b: "banana", c: "ameixa", d: "morango", answer: 2))
        list.append(Question(image: "morango", quest: "Qual o nome dessa fruta", a: "pera", b: "uva", c: "morango", d: "banana", answer: 3))
        
    }
    
}
