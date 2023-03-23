//
//  ViewController.swift
//  Coordinatesdemo
//
//  Created by Bhogireddy,Anjali on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageviewoutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = imageviewoutlet.frame.minX
        let minY = imageviewoutlet.frame.minY
        print("(\(minX),\(minY))")
        
        let maxX = imageviewoutlet.frame.maxX
        let maxY = imageviewoutlet.frame.maxY
        print("(\(maxX),\(maxY))")
        
        let midX = imageviewoutlet.frame.midX
        let midY = imageviewoutlet.frame.midY
        print("(\(midX),\(midY))")
        
        //move the image to the upper left corner
        imageviewoutlet.frame.origin.x = 0
        imageviewoutlet.frame.origin.y = 0
        //move the image to the upper right corner
        imageviewoutlet.frame.origin.x = 414-100
        imageviewoutlet.frame.origin.y = 0
        //move the image to the lower left corner
        imageviewoutlet.frame.origin.x = 0
        imageviewoutlet.frame.origin.y = 896-100
        //move the image to the lower right corner
        imageviewoutlet.frame.origin.x = 414-100
        imageviewoutlet.frame.origin.y = 896-100
        //move the image to the middle of the screen
        imageviewoutlet.frame.origin.x = 314/2
        imageviewoutlet.frame.origin.y = 796/2
        
        
        
        
    }


}

