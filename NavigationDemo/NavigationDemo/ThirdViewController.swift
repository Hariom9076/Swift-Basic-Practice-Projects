//
//  ThirdViewController.swift
//  NavigationDemo
//
//  Created by Hariom Chaurasiya on 04/11/25.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func detailVCbutton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func Homebutton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
