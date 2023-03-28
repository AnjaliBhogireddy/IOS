//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Bhogireddy,Anjali on 3/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    
   
    @IBOutlet weak var shakemeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
            //Move the image view outside of the screen view.
            imageOutlet.frame.origin.x = view.frame.maxX
            
            //Similarly, move other components as well outside of the screen
            
            happyOutlet.frame.origin.x = view.frame.width
            
            sadOutlet.frame.origin.x = view.frame.width
            
            angryOutlet.frame.origin.x = view.frame.width
            
            shakemeOutlet.frame.origin.x = view.frame.width
        }
    
    
    @IBAction func happybtnclicked(_ sender: Any) {
        
        updateAndAnimate("happy")
    }
    
    @IBAction func sadbtnclicked(_ sender: Any) {
        updateAndAnimate("sad")
    }
    
    @IBAction func angrybtnclicked(_ sender: Any) {
        updateAndAnimate("angry")
    }
    
    @IBAction func shakemebtnclicked(_ sender: Any) {
        var width = imageOutlet.frame.width
                
                width += 40
                
                var height = imageOutlet.frame.height
                
                height = height + 40
                
                var x  =  imageOutlet.frame.origin.x-20
                
                
                var y = imageOutlet.frame.origin.y-20
                
                var largeFrame = CGRect(x: x, y: y, width: width, height: height)
                
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageOutlet.frame = largeFrame
                })
    }
    
    @IBAction func showbtnclicked(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.image = UIImage(named: "Hello")
                    //Move all the compoenets to the center and disable show button
                    self.imageOutlet.center.x = self.view.center.x
                    
                    self.happyOutlet.center.x = self.view.center.x;
                    
                    self.sadOutlet.center.x = self.view.center.x;
                    
                    self.angryOutlet.center.x = self.view.center.x;
                    
                    self.shakemeOutlet.center.x = self.view.center.x
            
            
                    
                })
                
                showOutlet.isEnabled = false
                
    }
    
    func updateAndAnimate(_ imageName : String){
            
            //making the current image opaque.
            UIView.animate(withDuration: 1, animations: {
                self.imageOutlet.alpha = 0
            })
            
            //Assign the new image with animation and make it transparent. (alpha = 1)
            
            UIView.animate(withDuration: 1, delay:0.5, animations: {
                self.imageOutlet.alpha = 1
                self.imageOutlet.image = UIImage(named: imageName)
            })
            

        }
    
    
    

}

