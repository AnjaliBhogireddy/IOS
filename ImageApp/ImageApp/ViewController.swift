//
//  ViewController.swift
//  ImageApp
//
//  Created by Bhogireddy,Anjali on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    
   
    @IBOutlet weak var descriptionOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayimage(_ sender: Any) {
        //Display the image
        Image.image = UIImage(named:"Dhoni")
        //Display the text
        descriptionOutlet.text = "Captian of 2011 Cricket World Cup"
        
    }
    
}

