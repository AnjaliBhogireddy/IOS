//
//  ResultViewController.swift
//  SAMPLEAPP
//
//  Created by Bhogireddy,Anjali on 4/10/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var hOL: UILabel!
    
    @IBOutlet weak var wOL: UILabel!
    
    @IBOutlet weak var bmiOL: UILabel!
    
    
    var h = " "
    var w = " "
    var bmi = 0.0
    //var i = 0.0
    override func viewDidLoad() {
        hOL.text! = hOL.text! + h
                
                
        wOL.text! = wOL.text! + w
                    
                
                
        bmiOL.text! = bmiOL.text! + "\(bmi)"
        
      
         
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showbtn(_ sender: Any) {
        
         
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "resultsegue2"{
            var destination = segue .destination as! ImageViewController
            
            destination.image = bmi
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
