//
//  ViewController.swift
//  MVCpractiseApp
//
//  Created by Bhogireddy,Anjali on 4/9/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var amountOutlet: UITextField!
        
        
    @IBOutlet weak var discountRateOutlet: UITextField!
        
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcButtonClicked(_ sender: UIButton) {
            
            var amount = Double(amountOutlet.text!)
            
            var discRate = Double(discountRateOutlet.text!)
            
            priceAfterDiscount = amount! - (amount!*discRate!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "Resultsegue"{
            var destination = segue .destination as! ResultViewController
            
            destination.amount = amountOutlet.text!
            destination.discRate = discountRateOutlet.text!
            destination.result = String (priceAfterDiscount)
            
//            amountOutlet.text = ""
//            discountRateOutlet.text = ""
            
        }
            
    }


}

