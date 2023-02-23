//
//  ViewController.swift
//  DiscountApp
//
//  Created by Bhogireddy,Anjali on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    
    @IBOutlet weak var percentageOutlet: UITextField!
    
    
    @IBOutlet weak var diplaylabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatebutton(_ sender: Any) {
        
        //Reading input and assining it to a variable
        var amount = Double(amountOutlet.text!)
        //Reading input and assining it to a variable
        var percentage = Double(percentageOutlet.text!)
        var f1 = amount!
        var f2 = amount! * (percentage!/100)
        var finalamount = f1 - f2
        
        diplaylabelOutlet.text! = "Price after discount is \(finalamount)"
        
    }
    
    


}

