//
//  ViewController.swift
//  magicEightBall
//
//  Created by Tushar  Verma on 7/2/18.
//  Copyright © 2018 Tushar Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes, defnitely", "It is certain", "Without a doubt", "Yes", "Most Likely", "Sure,why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else{ return }
        generateAnswer()
    
    }
    
    func generateAnswer(){
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
}

