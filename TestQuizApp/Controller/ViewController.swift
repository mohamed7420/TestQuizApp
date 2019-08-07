//
//  ViewController.swift
//  TestQuizApp
//
//  Created by Mohamed on 8/5/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var progressParDesfine: UIProgressView!
    
    let allQuestion = QuestionBank()
    
    var score : Int = 0
    
    var counter : Int = 0
    
    var pickedAnswer:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nextQuestion()  
      
    }

    
    @IBAction func btn_ActionAnswer(_ sender: UIButton) {
        
        if sender.tag == 1 {
            
            pickedAnswer = true
            
        } else if sender.tag == 2{
            
            pickedAnswer = false
            
        }
        
        checkAnswer()
        
        counter += 1
        
        
        nextQuestion()
        
        
    }
    
    func checkAnswer(){
        
        let correctAnswer = allQuestion.list[counter].answer
        
        if correctAnswer == pickedAnswer{
            
            print("true answer")
            
            score += 1
            
            //scoreLabel.text = score.description
            scoreLabel.text = "Score : \(String(score))"
            
            
            progressParDesfine.frame.size.width = (view.frame.size.width/13) * CGFloat((counter + 1))

            
        }else{
            
            print("Wrong answer")
        }
        
        
    }
    
    func nextQuestion(){
        
        if counter <= 12 {
            questionLabel.text = allQuestion.list[counter].question
            progressLabel.text = "\(counter+1)/13"
        }else{
            
            
            let alert = UIAlertController(title: "Quiz Game", message: "Do you want to restart game ?", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "restart", style: .default) { (UIAlertAction) in
                
                self.startOver()
                
            }
            
            alert.addAction(alertAction)
            present(alert , animated: true , completion: nil)
            
            
//            print("End Of Quiz...")
//            counter = 0
        }
    }
    
    func startOver(){
        
        counter = 0
        score = 0
        
        scoreLabel.text = "Score : \(String(score))"
        //scoreLabel.text = score.description
        progressLabel.text = "\(counter+1)/13"
        progressParDesfine.frame.size.width = (view.frame.size.width/13) * CGFloat((counter + 1))
        nextQuestion()
    }
    
}

