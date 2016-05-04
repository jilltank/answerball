//
//  MainVC.swift
//  answer_ball
//
//  Created by Jillian Tankersley on 5/1/16.
//  Copyright © 2016 Jillian Tankersley. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var answerText: UILabel!
    
    var answers = [
        "Yes",
        "No",
        "Maybe so",
        "No idea on that one",
        "I don't even know why you asked this question",
        "The force is not with you on this one",
        "That's not how the force works!",
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        getAnswerTapped(UIEvent)
    }
    
    @IBAction func getAnswerTapped(sender: AnyObject) {
        
        answerText.text = getAnswer()
        answerText.hidden = false
        
    }
    
    func getAnswer() -> String {
        let random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        return result
    }
    

    
}
