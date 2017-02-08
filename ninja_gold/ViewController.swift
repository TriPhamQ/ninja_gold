//
//  ViewController.swift
//  ninja_gold
//
//  Created by Tri Pham on 2/8/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func farmButton(_ sender: UIButton) {
        let ran = Int(arc4random_uniform(10)+10)
        score += ran
        scoreLabel.text = "Score: \(score)"
    }
    @IBAction func caveButton(_ sender: UIButton) {
        let ran = Int(arc4random_uniform(5)+5)
        score += ran
        scoreLabel.text = "Score: \(score)"
    }
    @IBAction func houseButton(_ sender: UIButton) {
        let ran = Int(arc4random_uniform(3)+2)
        score += ran
        scoreLabel.text = "Score: \(score)"
    }
    @IBAction func casinoButton(_ sender: UIButton) {
        let ran = Int(arc4random_uniform(50))
        let winorlose = Int(arc4random_uniform(2))
        if winorlose == 1 {
            score += ran
        }
        else {
            score -= ran
        }
        scoreLabel.text = "Score: \(score)"
    }
    @IBAction func resetButton(_ sender: UIButton) {
        score = 0
        scoreLabel.text = "Score: \(score)"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scoreLabel.text = "Score: \(score)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

