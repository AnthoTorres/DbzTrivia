//
//  ExtraStuff.swift
//  DbzTrivia
//
//  Created by Anthony Torres on 5/18/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import Foundation
import UIKit



func getViewController(name:String) -> UIViewController {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    let viewController = storyboard.instantiateViewController(withIdentifier: name)
    return viewController
}
























