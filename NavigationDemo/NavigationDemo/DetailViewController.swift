//
//  DetailViewController.swift
//  NavigationDemo
//
//  Created by Hariom Chaurasiya on 04/11/25.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Homebutton(_ sender: UIButton) {
//        let homecontroller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        self.navigationController?.pushViewController(homecontroller, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func ThirdVCbutton(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
}
