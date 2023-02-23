//
//  ViewController.swift
//  SampleApp2
//
//  Created by Bhogireddy,Anjali on 1/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstname: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var crsname: UITextField!
    
    @IBOutlet weak var Displaylabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitbutton(_ sender: Any) {
        
        //Read the firstname and store it in a variable
        var input1 = firstname.text!
        //Read te last name and store it in a variable
        var input2 = lastname.text!
        // Read the coursename and store it in a variable
        var input3 = crsname.text!
        
        // Perform String interpolation and stoore it in the display label
        Displaylabel.text = "Hello \(input1),\(input2)\rWelcome to \(input3) course  "
        
        
        
        
    }
    

}

