//  Questions.swift
//  Quizzler
//
//  Created by Asif Rabbi on 18/1/20.


import Foundation

class Questions {
    var questionText : String = ""
    var decision : Bool
    
    init(text : String, answere : Bool) {
        questionText = text
        decision = answere
    }
}
