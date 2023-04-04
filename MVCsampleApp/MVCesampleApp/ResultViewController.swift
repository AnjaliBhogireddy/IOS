//
//  ResultViewController.swift
//  MVCesampleApp
//
//  Created by Bhogireddy,Anjali on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var countrylabel: UILabel!
    
    
    @IBOutlet weak var Imageview: UIImageView!
    
    
    @IBOutlet weak var countrydes: UILabel!
    
    var destinationlabel = ""
    var destinationdesc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        countrylabel.text = countrylabel.text! + destinationlabel
//        countrydes.text! = countrydes.text! + destinationdesc
       
        if(destinationlabel == "India"){
            countrydes.text! = "India is known for its cultural diversity, rich history, and heritage. "
            Imageview.image = UIImage(named: "India")
        }
        else if(destinationlabel == "USA"){
            countrydes.text! = "United States of America is a North American nation that is the world's most dominant economic and military power."
            Imageview.image = UIImage(named: "US")
        }
        else if(destinationlabel == "China"){
            countrydes.text! = "China is the most populated country in the world, with charming and captivating citizens."
            Imageview.image = UIImage(named: "China")
        }
        else if(destinationlabel == "Japan"){
            countrydes.text! = "Japan is known for everything from onsen hot springs and kabuki baths to all-night neon-lit dance parties, anime, and sushi boat restaurants, all of which are decidedly more modern."
            Imageview.image = UIImage(named: "Japan")
        }
        else if(destinationlabel == "Australia"){
            countrydes.text! = "Australia is known for many things, including swathes of tropical beaches, marine reserves, Aboriginal culture, cute koalas, rolling wine country, and lush rainforests."
            Imageview.image = UIImage(named: "Australia")
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
