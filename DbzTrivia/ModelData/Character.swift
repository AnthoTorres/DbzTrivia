//
//  Character.swift
//  DbzTrivia
//
//  Created by Anthony Torres on 5/19/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import Foundation
import UIKit

enum Character:String {
    // Heros
    case bardock
    case gogeta
    case gohan
    case gokussb
    case goten
    case gotenks
    case jiren
    case krillan
    case pickatoe
    case pikkon
    case ssj4Gogeta
    case stongestavenger
    case tien
    case trunks
    case vegeta
    
    //Villains
    case bojack
    case broly
    case brolyDbs
    case cell
    case cooler
    case dro13
    case dro17
    case Freeza
    case gokublk
    case hit
    case janemba
    case kidbuu
    case kingcold
    case napa
    case omegaShen
    
    
    var image:UIImage {
        return UIImage(named: self.rawValue) ?? UIImage()
    }
}
