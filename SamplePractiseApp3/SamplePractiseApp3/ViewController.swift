//
//  ViewController.swift
//  SamplePractiseApp3
//
//  Created by Bhogireddy,Anjali on 1/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crs01: UITextField!
    
    @IBOutlet weak var crs02: UITextField!
    
    
    @IBOutlet weak var displaylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitbuttonOutlet(_ sender: Any) {
        
        //Read the course 1 and store in a variable
        var input = crs01.text!
        
        //Read the course 2 and store in a variable
        var input2 = crs02.text!
        
        
        
        // Perform the string interpolation and assign it to the displayLabel
        displaylabel.text = "\(input) - \(input2)"
    }
    

}

