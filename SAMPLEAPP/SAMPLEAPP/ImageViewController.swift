//
//  ImageViewController.swift
//  SAMPLEAPP
//
//  Created by Bhogireddy,Anjali on 4/10/23.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    
    @IBOutlet weak var labelOL: UILabel!
    @IBOutlet weak var ImageOL: UIImageView!
    
    var image : Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if(image<18.5){
            labelOL.text! = "You are currently under weight need to gain weight☹️"
            self.ImageOL.alpha = 1
            self.ImageOL.image = UIImage(named: "Underweight")
            self.animate()
      
        }
        else if(image > 24.9){
            labelOL.text! = "You are currently over weight need to lose weight☹️"
            self.ImageOL.alpha = 1
            self.ImageOL.image = UIImage(named: "Overweight")
            self.animate()
            
//            UIView.animate(withDuration: 1, animations: {
//                self.ImageOL.alpha = 0
//            })
//            UIView.animate(withDuration: 1, delay:0.5, animations: {
//                self.ImageOL.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
//                self.ImageOL.center = self.view.center
//                self.ImageOL.alpha = 1
//                self.ImageOL.image = UIImage(named: "Overweight")
//
//
//            }, completion: { done in
//                if done{
//                    UIView.animate(withDuration: 1, animations: {
//                        self.ImageOL.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//                        self.ImageOL.center = self.view.center
//                    })
//                }
//                self.ImageOL.alpha = 1
//                self.ImageOL.image = UIImage(named: "Overweight")
//
//            })
            //ImageOL.image = UIImage(named: "Overweight")
        }else{
            labelOL.text! = "You have ideal weight means you are healthy🙂"
            self.ImageOL.alpha = 1
            self.ImageOL.image = UIImage(named: "IdealWeight")
            self.animate()
//
            
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
    
    func animate(){
        UIView.animate(withDuration: 1, delay:0.5, animations: {
            self.ImageOL.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            self.ImageOL.center = self.view.center
           }, completion: { done in
            if done{
                self.shrink()
            }
        })
      }

    
    func shrink(){
        UIView.animate(withDuration: 1, animations: {
            self.ImageOL.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.ImageOL.center = self.view.center
        }, completion: { done in
            self.animate()
        })
    }
}
