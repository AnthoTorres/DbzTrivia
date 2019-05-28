//
//  QuizViewController.swift
//  DbzTrivia
//
//  Created by Anthony Torres on 5/18/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import UIKit



class QuizViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    
    @IBOutlet weak var player2Health: UIView!
    @IBOutlet weak var player1Health: UIView!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    
//    var currentQuestionArray: [Question] = []
    var currentQuestion: Question = heroQuestion10
    
    var counter:Int = 0
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if playerChoseHero {
            self.view.backgroundColor = .blue
        }
        else {
            self.view.backgroundColor = .red

        }
        currentQuestion = questionArray[counter]
        setUpView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickTrue(_ sender: Any) {
        pickQuestion()
    }
    @IBAction func pickFalse(_ sender: Any) {
        pickQuestion()
    }
    
    func setUpView() {
        
        questionNumberLabel.text = "Question:\(counter + 1)"
        questionLabel.text = currentQuestion.question
       
        if playerChoseHero {
            
            player1Image.image = currentQuestion.player1.image
            player2Image.image = currentQuestion.player2.image
            
        }
        else {
            player1Image.image = currentQuestion.player2.image
            player2Image.image = currentQuestion.player1.image
            
        }
    }
    
    
    func pickQuestion() {
        //check if random question has been used.
        
        counter = counter + 1
        if counter < questionArray.count {
            
            currentQuestion = questionArray[counter]
            setUpView()
        }
        else {
            self.dismiss(animated: true, completion: nil)
        }
        
        // if not then append question and set question to current question
        
        // set up view with current question
        
        
        
        //else call pickRandomQuestion again
        
    }
    
    
}

