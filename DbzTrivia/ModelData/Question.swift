//
//  Question.swift
//  DbzTrivia
//
//  Created by Anthony Torres on 5/18/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import Foundation

class Question {
    var question: String
    var player1: Character
    var player2: Character
    var answer: Bool
    
    
    init(q:String,p1:Character,p2:Character,a:Bool) {
        self.question = q
        self.player1 = p1
        self.player2 = p2
        self.answer = a
    }
}
