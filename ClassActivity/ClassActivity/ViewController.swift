//
//  ViewController.swift
//  ClassActivity
//
//  Created by Bhogireddy,Anjali on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var InputOutlet: UITextField!
    
    
    @IBOutlet weak var displaylabel1: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CheckingBTN(_ sender: UIButton) {
        
        //Reading input and assining it to a variable
        var text = InputOutlet.text!
        if(text.contains("a")||text.contains("e")||text.contains("i")||text.contains("o")||text.contains("u")){
            displaylabel1.text! = "Entered text has vowels😁"
        }
        else{
            displaylabel1.text! = "Entered text has no vowels🙁"
        }
       
            
        
    }
    


}

