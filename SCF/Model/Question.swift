//
//  Question.swift
//  SCF
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Phanuphong Lengjaroen. All rights reserved.
//

import Foundation
class Question {
    let answer : Int
    let questionText : String
    let questionA : String
    let questionB : String
    let questionC : String
    
    
    
    init(text : String, correctAnswer : Int, correctA : String, correctB : String, correctC : String) {
        questionText = text
        answer = correctAnswer
        questionA = correctA
        questionB = correctB
        questionC = correctC
    }
    
}
