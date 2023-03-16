//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Bhogireddy,Anjali on 3/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayimage: UIImageView!
    
    
    
    
    @IBOutlet weak var crsnumber: UILabel!
    
    @IBOutlet weak var crstitle: UILabel!
    
    
    @IBOutlet weak var semoffered: UILabel!
    
    @IBOutlet weak var nextbtn: UIButton!
    
    @IBOutlet weak var prevbtn: UIButton!
    
    var imageNumber = 0
    let courses = [["img01","44555","Network Security","Fall 2022"],["img02","44643","iOS","Spring 2023"],["img03","44656","Streaming Data","Fall 2024"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the first image(image in the 0th position)
        updateCourseDetails(imageNumber)
        //Previous button disabled
        prevbtn.isEnabled = false
        //next button enabled
        nextbtn.isEnabled = true
    }
    
    
    @IBAction func previousbtnclicked(_ sender: Any) {
        
        //Decrement the imageNumber
        imageNumber -= 1
        //Update the course details
        updateCourseDetails(imageNumber)
        
        //Next button should be enabled
        nextbtn.isEnabled = true
        
        //Once you reach the starting of the array, we need to disable the previous button
        if(imageNumber == 0){
            prevbtn.isEnabled = false
        }
        
        
    }
    
    @IBAction func nextbtnclicked(_ sender: Any) {
        //increment the image number
        imageNumber += 1
        //Update the course details of the next course(image, num, title and sem offered)
        
        
        updateCourseDetails(imageNumber)
        //Previous button should be enabled
        prevbtn.isEnabled = true
        //When we reach the end of the array, next button should be disabled
        if(imageNumber == courses.count-1){
            nextbtn.isEnabled = false
        }
    }
    func updateCourseDetails(_
                             imageNumber:Int){
        displayimage.image = UIImage(named:courses[imageNumber][0])
        crsnumber.text! = courses[imageNumber][1]
        crstitle.text! = courses[imageNumber][2]
        semoffered.text! = courses[imageNumber][3]
    }
}

