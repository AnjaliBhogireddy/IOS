//
//  ViewController.swift
//  Bhogireddy-CalculatorApp
//
//  Created by Bhogireddy,Anjali on 2/16/23.
//

import UIKit

class ViewController: UIViewController {
    var value1:Double = -5.5
    var value2:Double = -5.5
    var calcOperator:String = ""
    
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func Dot(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "."
    }
    @IBAction func Zero(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "0"
    }
    


    @IBAction func AllClear(_ sender: UIButton) {
        
        resultOutlet.text! = ""
        value1 = -5.5
        value2 = -5.5
    }
    
    
    @IBAction func Clear(_ sender: UIButton) {
        var value = resultOutlet.text!
        if(!value.isEmpty)
        {
            value.removeLast()
        }
        if(value.isEmpty)
        {
            value1 = -5.5
            value2 = -5.5
        }
        resultOutlet.text! = value
    }
    
    @IBAction func PlusMinus(_ sender: UIButton) {
        if calcOperator == "+"
        {
            calcOperator = "-"
        }
        else if calcOperator == "-"
        {
            calcOperator = "+"
        }
    }
    
    @IBAction func Divison(_ sender: UIButton) {
        value1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = resultOutlet.text! + "÷"
        calcOperator = "÷"
        resultOutlet.text = ""
    }
   
    @IBAction func Multiply(_ sender: UIButton) {
        
        value1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "x"
        calcOperator = "x"
        resultOutlet.text = ""
       
    }
    @IBAction func Minus(_ sender: UIButton) {
        value1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "-"
        calcOperator = "-"
        resultOutlet.text = ""
        
    }
    @IBAction func Module(_ sender: UIButton) {
        value1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "%"
        calcOperator = "%"
        resultOutlet.text = ""
       
    }
    @IBAction func Plus(_ sender: UIButton) {
        value1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = "+"
        calcOperator = "+"
        resultOutlet.text = ""
    }
    @IBAction func Equal(_ sender: UIButton) {
        value2 = Double(resultOutlet.text!) ?? 0.0
        if calcOperator.contains("+"){
        var result = value1+value2
        if(result.truncatingRemainder(dividingBy: 1) == 0){resultOutlet.text = "\(Int(result))"}
        else {resultOutlet.text = "\(result)"}}
        else if calcOperator.contains("-")
        {
        var result = value1 - value2
        if(result.truncatingRemainder(dividingBy: 1) == 0){resultOutlet.text = "\(Int(result))"}
        else{resultOutlet.text = "\(result)"}}
        if calcOperator.contains("x"){
        var result = value1 * value2
        if(result.truncatingRemainder(dividingBy: 1) == 0){resultOutlet.text = "\(Int(result))"}
        else {resultOutlet.text = "\(result)"}}
        if calcOperator.contains("÷"){
            var result = value1 / value2
        if(value2 == 0){
            resultOutlet.text = "Not a Number"
        } else if(result.truncatingRemainder(dividingBy: 1) == 0){resultOutlet.text = "\(Int(result))"}
            else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}}
        if calcOperator.contains("%"){
            var result = value1.truncatingRemainder(dividingBy : value2)
            if(result.truncatingRemainder(dividingBy: 1) == 0){resultOutlet.text = "\(Int(result))"}
            else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}
                        }
    }
    @IBAction func One(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "1"
    }
    @IBAction func Two(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "2"
    }
    @IBAction func Three(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "3"
    }
    @IBAction func Four(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "4"
    }
    @IBAction func Five(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "5"
    }
    @IBAction func Six(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "6"
    }
    @IBAction func Seven(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "7"
    }
    @IBAction func Eight(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "8"
    }
    
    @IBAction func Nine(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text! + "9"
    }
}

