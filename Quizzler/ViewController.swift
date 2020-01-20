//  ViewController.swift
//  Quizzler

import UIKit

class ViewController: UIViewController {
    
    var puzzleQuestions = AllQuestions()
    var chosenAnswere : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBAR: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
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
        scoreLabel.text = ("Score: \(score)")
        progressLabel.text = ("Question: \(questionNumber + 1)/13")
        progressBAR.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12{
            questionLabel.text = puzzleQuestions.items[questionNumber].questionText
            updateUI()
            
        }
        else{
            let alert = UIAlertController(title: "End", message: "You have finished the quiz!", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restart)
            present(alert, animated: true, completion: nil)
            
            score = 0
            questionNumber = 0
            scoreLabel.text = ("Score: \(score)")
            progressLabel.text = ("Question: \(questionNumber)")
        }
    
    }
    
    
    func checkAnswer() {
        let correctAnswere = puzzleQuestions.items[questionNumber].decision
        if correctAnswere == chosenAnswere{
            score += 1
            print("Wallah!")
            ProgressHUD.showSuccess("Correct")
        }
        else if correctAnswere != chosenAnswere{
            print("Noh!")
            ProgressHUD.showSuccess("Wrong")
        }
        
    }
    
    
    func startOver() {
     questionNumber = 0
     nextQuestion()
    }
    

    
}
