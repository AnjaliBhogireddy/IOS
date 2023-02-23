//
//  ViewController.swift
//  TemperatureApp
//
//  Created by Bhogireddy,Anjali on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureOutlet: UITextField!
    
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func evaluation(_ sender: Any) {
        
        if(Int(temperatureOutlet.text!)! >= 35){
            ImageOutlet.image = UIImage(named:"Sunny")
        }
        else if(Int(temperatureOutlet.text!)! >= 15 && Int(temperatureOutlet.text!)! < 35){
            ImageOutlet.image = UIImage(named:"normal")
        }
        else if(Int(temperatureOutlet.text!)! < 15 && Int(temperatureOutlet.text!)! >= 0 ){
            ImageOutlet.image = UIImage(named:"Cold")
        }
        else if(Int(temperatureOutlet.text!)! < 0){
            ImageOutlet.image = UIImage(named:"Extreme freeze")
        }
    }
    
}

