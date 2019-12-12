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
    
    @IBOutlet weak var LabelEnd: UILabel!
    @IBOutlet weak var Next: UIButton!
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomQuestion()
        Hide()
        // Do any additional setup after loading the view.
    }
    func RandomQuestion(){
        var RandomNumber = arc4random()%4
        RandomNumber += 1
        
        switch(RandomNumber){
        case 1:
            QuestionLabel.text = "What is square of 2?"
            Button1.setTitle("2", for:UIControl.State.normal)
            Button2.setTitle("4", for:UIControl.State.normal)
            Button3.setTitle("46", for:UIControl.State.normal)
            Button4.setTitle("28", for:UIControl.State.normal)
            CorrectAnswer = "1"
            break
        case 2:
            QuestionLabel.text = "What is square of 4?"
            Button1.setTitle("12", for:UIControl.State.normal)
            Button2.setTitle("16", for:UIControl.State.normal)
            Button3.setTitle("36", for:UIControl.State.normal)
            Button4.setTitle("48", for:UIControl.State.normal)
            CorrectAnswer = "2"
            break
         case 3:
            QuestionLabel.text = "What is square of 6?"
            Button1.setTitle("22", for:UIControl.State.normal)
            Button2.setTitle("14", for:UIControl.State.normal)
            Button3.setTitle("36", for:UIControl.State.normal)
            Button4.setTitle("38", for:UIControl.State.normal)
            CorrectAnswer = "3"
            break
         case 4:
            QuestionLabel.text = "What is square of 8?"
            Button1.setTitle("42", for:UIControl.State.normal)
            Button2.setTitle("34", for:UIControl.State.normal)
            Button3.setTitle("26", for:UIControl.State.normal)
            Button4.setTitle("64", for:UIControl.State.normal)
            CorrectAnswer = "4"
            break
        default:
            break
        }
    }
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    func UnHide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    @IBAction func Button1Action(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "1"){
            LabelEnd.text="You Are Correct!"
        }else{
            LabelEnd.text="You Are Wrong!!!"
        }
        
    }
    
    @IBAction func Button2Action(_ sender: Any) {
        UnHide()
               if(CorrectAnswer == "2"){
                   LabelEnd.text="You Are Correct!"
               }else{
                   LabelEnd.text="You Are Wrong!!!"
               }
               
    }
    @IBAction func Button3Action(_ sender: Any) {
        UnHide()
               if(CorrectAnswer == "3"){
                   LabelEnd.text="You Are Correct!"
               }else{
                   LabelEnd.text="You Are Wrong!!!"
               }
               
    }
    @IBAction func Button4Action(_ sender: Any) {
        UnHide()
               if(CorrectAnswer == "4"){
                   LabelEnd.text="You Are Correct!"
               }else{
                   LabelEnd.text="You Are Wrong!!!"
               }
               
    }
    @IBAction func Next(_ sender: Any) {
        RandomQuestion()
        Hide()
    }
}

