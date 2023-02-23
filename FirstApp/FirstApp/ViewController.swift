//
//  ViewController.swift
//  FirstApp
//
//  Created by Bhogireddy,Anjali on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOutlet: UITextField!
    
    
    
    
    @IBOutlet weak var displaylabelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        // Read thr input from the text field and store it in a  variable
        var input = inputOutlet.text!
        var lastname = "last name"
        
        // Perform the string interpolation and assign it to the displayLabel
        displaylabelOutlet.text = "Hello, \(input)\(lastname)!😀"
        //displaylabelOutlet1.text = "Bhogireddy"
        //displylabelOutlet.text = //"Welcome to IOS class"
        
    }
    
}

