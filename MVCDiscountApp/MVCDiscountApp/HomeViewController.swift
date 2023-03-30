//
//  ViewController.swift
//  MVCDiscountApp
//
//  Created by Bhogireddy,Anjali on 3/30/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discRateOL: UITextField!
    
    
    var priceafterdiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        
        //resd the text field and convert it into double
        var amount = Double(amountOL.text!)
        print(amount!)
        var discount = Double(discRateOL.text!)
        print(discount!)
        
        
        priceafterdiscount = amount!-(amount!*discount!/100)
        print(priceafterdiscount)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //create a transition
        var transition = segue.identifier
        if(transition == "resultSegue"){
            //create a destination
            var destination = segue.destination as! ResultViewController
            
            
            //assign values to ResultVC
            destination.destinationAmount = amountOL.text!
            destination.destinationDiscRate = discRateOL.text!
            destination.destinationResult = String(priceafterdiscount)
        }
       
    }
}

