//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Salomon Pluviose on 9/24/16.
//  Copyright © 2016 Salomon Pluviose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func guessButton(_ sender: AnyObject) {
        let randomNum = Int(arc4random_uniform(6))
        
        let num = Int(answerTextField.text!)
        if (num == randomNum) {
            answerLabel.text = "You're correct"
        } else {
            answerLabel.text = "Nah, I had \(randomNum) fingers"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

