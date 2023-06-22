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
    
    let questions = [
        ["Is 2+2 equal 4?", "True"],
        ["Is the earth flat?", "False"],
        ["Snakes have feets?", "False"]
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = questions[questionNumber][1]
        if actualAnswer == userAnswer {
            print("right")
        } else {
            print("wrong")
        }
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        if questionNumber == questions.count  {
            questionNumber = 0
        }
        questionLabel.text = questions[questionNumber][0]

    }
    
}

