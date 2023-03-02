//
//  ViewController.swift
//  Bhogireddy_Exam01
//
//  Created by Bhogireddy,Anjali on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Display1: UILabel!
    
    
    @IBOutlet weak var amount: UITextField!
    
    
    
    @IBOutlet weak var Image: UIImageView!
    
    
    
    @IBOutlet weak var Display2: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Display1.text! = " ₹ Currency Converter $"
        Image.image = UIImage(named: "default")
    }
    
    
    
    @IBAction func USDbutton(_ sender: Any) {
        if(amount.text!.isEmpty){
            Image.image = UIImage(named: "oops")
            Display2.text! = "Please enter some amount"
        }
        else if(amount.text! == "0"){
            Display2.text! = "Cannot convert"
            Image.image = UIImage(named: "oops")
        }
        else{
        //var b1:Double = 0.0
        var b1 = Double(amount.text!)!
            var result = b1 / 82.93
            var r = String(format: " %.2f", result)
        Display2.text! = " ₹ \(amount.text!) in USD is \(r)"
            Image.image = UIImage(named: "usd")
        }
        
    }
    
    @IBAction func CADbutton(_ sender: Any) {
        if(amount.text!.isEmpty){
            Image.image = UIImage(named: "oops")
            Display2.text! = "Please enter some amount"
        }
        else if(amount.text! == "0"){
            Display2.text! = "Cannot convert"
            Image.image = UIImage(named: "oops")
        }
        else{
        //var b2 = Double(amount.text!)!
        var b1 = Double(amount.text!)!
        var result = b1 / 82.93
        var result2 = result * 1.26
        var r = String(format: " %.2f", result2)
        Display2.text! = " ₹ \(amount.text!) in CAD is \(r)"
            Image.image = UIImage(named: "cad")
        }
    }
    
}

