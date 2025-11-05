//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Hariom Chaurasiya on 02/11/25.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func detailVCbutton(_ sender: UIButton) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    

}

