//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Bhogireddy,Anjali on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    var Operand1 = -1.1
    var Operator = " "
    var Operand2 = -1.1
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Btn5Click(_ sender: Any) {
        labelOutlet.text! = "5"
        if(Operand1 == -1.1){
            Operand1 = 5
        }
        else{
            Operand2 = 5
        }
    }
    
    
    @IBAction func BtnPlus(_ sender: Any) {
        labelOutlet.text! = "+"
        if(Operator == " "){
            Operator = "+"
        }else{
            Operator = "-"
        }
    }
    
    @IBAction func Btn3Click(_ sender: Any) {
        labelOutlet.text! = "3"
        if(Operand2 == -1.1){
            Operand2 = 3
        }
        else{
            Operand1 = 3
        }
    }
    
    
    @IBAction func BtnEquals(_ sender: Any) {
        labelOutlet.text! = "="
        labelOutlet.text! = "\(Operand1+Operand2)"
    }
    
    
}

