//
//  ViewController.swift
//  SegmentControlDemo
//
//  Created by Hariom Chaurasiya on 29/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.isHidden = true
    }
        
    @IBAction func valuechanges(_ sender: UISegmentedControl) {
         if seg.selectedSegmentIndex == 0{
            label.text = "Google"
            image.image = UIImage(named: "google_image")
             image.isHidden = false
        }else if seg.selectedSegmentIndex == 1{
            label.text = "Facebook"
            image.image = UIImage(named: "facebook_image")
            image.isHidden = false
        }else if seg.selectedSegmentIndex == 2{
            label.text = "Linkedin"
            image.image = UIImage(named: "linkedin_image")
            image.isHidden = false
        }else if seg.selectedSegmentIndex == 3{
            label.text = "Twitter"
            image.image = UIImage(named: "twitter_image")
            image.isHidden = false
            
        }
    }
    

}

