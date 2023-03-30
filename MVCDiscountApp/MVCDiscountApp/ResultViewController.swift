//
//  ResultViewController.swift
//  MVCDiscountApp
//
//  Created by Bhogireddy,Anjali on 3/30/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayAmountOL: UILabel!
    
    @IBOutlet weak var displayDiscRateOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    
    
    //Need variables to store the variables
    var destinationAmount = " "
    var destinationDiscRate = " "
    var destinationResult = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayAmountOL.text! += destinationAmount
        displayDiscRateOL.text! += destinationDiscRate
        resultOL.text! += destinationResult
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
