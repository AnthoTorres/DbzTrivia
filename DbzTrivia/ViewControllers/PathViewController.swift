//
//  PathViewController.swift
//  DbzTrivia
//
//  Created by Anthony Torres on 5/18/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import UIKit

var playerChoseHero: Bool = false


class PathViewController: UIViewController {
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
 
    
    }
    
    
    @IBAction func pickHero(_ sender: Any) {
        playerChoseHero = true
    }
    
    
    @IBAction func pickVillain(_ sender: Any) {
        playerChoseHero = false
    }
    
    
    @IBAction func confirmFight(_ sender: Any) {
        
        if playerChoseHero {
            
            print("You Chosen The Path Of Hero")
            

        }
        else {
            
            print("You Chosen The Path Of Villain")
        }
    
        self.present(getViewController(name: "QuizViewController"), animated: true, completion: nil)
    }
    
}
