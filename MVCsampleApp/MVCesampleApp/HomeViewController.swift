//
//  ViewController.swift
//  MVCesampleApp
//
//  Created by Bhogireddy,Anjali on 4/3/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    var countrylabel = ""
    var descriptionlabel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func viewbtn(_ sender: Any) {
        
        var input = inputOL.text!
//                if(input == "India"){
//                    //countrylabel = "India"
//                    descriptionlabel = "India is known for its cultural diversity, rich history, and heritage. "
//                }
//                else if(input == "USA" ){
//                    //countrylabel = "United States of America"
//                    descriptionlabel = "The United States of America is a North American nation that is the world's most dominant economic and military power"
//                }
//                else if(input == "Japan"){
//                    //countrylabel = "Japan"
//                    descriptionlabel = "Japan is known for everything from onsen hot springs and kabuki baths to all-night neon-lit dance parties, anime, and sushi boat restaurants, all of which are decidedly more modern."
//                }
//                else if(input == "China"){
//                    //countrylabel = "China"
//                    descriptionlabel = "It is the most populated country in the world, with charming and captivating citizens."
//                }
//                else if(input == "Australia"){
//                    //countrylabel = "Australia"
//                    descriptionlabel = "Australia is known for many things, including swathes of tropical beaches, marine reserves, Aboriginal culture, cute koalas, rolling wine country, and lush rainforests."
//                }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultsegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.destinationlabel = inputOL.text!
            //destination.destinationdesc = descriptionlabel
            
            //            countrylabel = ""
                       descriptionlabel = ""
            
            
            
            
        }
        
        
    }
    
}
