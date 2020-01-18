//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.


import UIKit

class ViewController: UIViewController {
    
    var puzzleQuestions = AllQuestions()
    var chosenAnswere : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = puzzleQuestions.items[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
       
        if sender.tag == 1{
            chosenAnswere = true
        }
        else if sender.tag == 2{
            chosenAnswere = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12{
            questionLabel.text = puzzleQuestions.items[questionNumber].questionText
        }
        else{
            let alert = UIAlertController(title: "End", message: "You have finished the quiz!", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restart)
            present(alert, animated: true, completion: nil)
        }
    
    }
    
    
    func checkAnswer() {
        let correctAnswere = puzzleQuestions.items[questionNumber].decision
        if correctAnswere == chosenAnswere{
            print("Wallah!")
        }
        else if correctAnswere != chosenAnswere{
            print("Noh!")
        }
        
    }
    
    
    func startOver() {
       
    }
    

    
}
