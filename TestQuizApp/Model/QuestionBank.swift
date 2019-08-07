//
//  QuestionBank.swift
//  TestQuizApp
//
//  Created by Mohamed on 8/6/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import Foundation


class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        let item = Question(question: "the number of your brother is 4 ?", answer: true)
        
        list.append(item)
        
        list.append(Question(question: "is my name is ahmed ?", answer: false))
        list.append(Question(question: "is your brother name is ahmed ?", answer: true))
        list.append(Question(question: "is your sister name is mena ?", answer: true))
        list.append(Question(question: "is your old sister name is mona ?", answer: false))
        
        list.append(Question(question: "is my name is ahmed ?", answer: false))
        list.append(Question(question: "is your brother name is ahmed ?", answer: true))
        list.append(Question(question: "is your sister name is mena ?", answer: true))
        list.append(Question(question: "is your old sister name is mona ?", answer: false))
        
        
        list.append(Question(question: "is my name is ahmed ?", answer: false))
        list.append(Question(question: "is your brother name is ahmed ?", answer: true))
        list.append(Question(question: "is your sister name is mena ?", answer: true))
        list.append(Question(question: "is your old sister name is mona ?", answer: false))    }
    
    
    
}
