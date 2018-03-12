//
//  ViewController.swift
//  ExtranjeroAPP
//
//  Created by senac2018 on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var progress: UIView!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var controlTotalQuestions: UILabel!
    
    //Buttons
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    
    let allQuestions = QuestionBank()
    var questionNumber:  Int = 0
    var pontos: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == selectedAnswer{
            print("correct")
            pontos += 1
        }else{
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
        
    }
    
    //Func para atualizar as questões
    func updateQuestion(){
        if questionNumber  <= allQuestions.list.count - 1{
            imageView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            textView.text = allQuestions.list[questionNumber].question
            option1.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            option2.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            option3.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            option4.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }else{
            
        }
        
        updateUI()
    }
    
    //Func para atualizar as telas
    func updateUI(){
        
        score.text = "Score: \(pontos)"
        controlTotalQuestions.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progress.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
    }
    
    //Func para dar restart no Quiz
    func restartQuiz(){
        pontos = 0
        questionNumber = 0
        updateQuestion()
    }
    
    
}

