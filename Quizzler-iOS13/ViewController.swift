//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
    ["4 + 5 = 9", "True"],
    ["6 * 4 = 24", "True"],
    ["6 - 9 = -5", "False"]
    ]
    
    
    var questionNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber][1]
        
        
        updateUI()
        
        if userAnswer == actualAnswer {
            print("right!")
        } else {
            print("wrong!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
    }
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    

}

