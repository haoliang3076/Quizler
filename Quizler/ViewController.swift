//
//  ViewController.swift
//  Quizler
//
//  Created by Haoliang Zhang on 12/12/19.
//  Copyright © 2019 Haoliang Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func RandomQuestion(){
        var RandomNumber = arc4random()%4
        RandomNumber += 1
    }

    @IBAction func Button1Action(_ sender: Any) {
    }
    
    @IBAction func Button2Action(_ sender: Any) {
    }
    @IBAction func Button3Action(_ sender: Any) {
    }
    @IBAction func Button4Action(_ sender: Any) {
    }
}

