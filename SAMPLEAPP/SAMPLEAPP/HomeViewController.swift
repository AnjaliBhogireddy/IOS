//
//  ViewController.swift
//  SAMPLEAPP
//
//  Created by Bhogireddy,Anjali on 4/10/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var heightOL: UITextField!
    
    
    @IBOutlet weak var weightOL: UITextField!
    
    var BMI = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcBMI(_ sender: Any) {
        
        var h = Double(heightOL.text!)
        var weight = Double(weightOL.text!)
        var height = h! * 0.3048
        
        BMI = Double(String(format: "%.2f",weight!/(height * height) ))!
        //BMI = weight! / r!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "resultsegue1"{
            var destination = segue .destination as! ResultViewController
            
            destination.h = heightOL.text!
            destination.w = weightOL.text!
            destination.bmi = BMI
                        
//                        heightOL.text = ""
//                        weightOL.text = ""
            
            
        }
    }
    

}

