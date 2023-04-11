//
//  ResultViewController.swift
//  MVCpractiseApp
//
//  Created by Bhogireddy,Anjali on 4/9/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayAmountOutlet: UILabel!
       
       @IBOutlet weak var displayDiscRateOutlet: UILabel!
     
       
       @IBOutlet weak var displayResultOutlet: UILabel!
       
       var amount = ""
       var discRate = ""
       var result = ""
       

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayAmountOutlet.text = displayAmountOutlet.text! + amount
                
                
                displayDiscRateOutlet.text = displayDiscRateOutlet.text! +
                    discRate
                
                
                displayResultOutlet.text = displayResultOutlet.text! + result
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
