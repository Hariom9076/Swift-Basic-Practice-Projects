//
//  ViewController.swift
//  demoPassDataDemo
//
//  Created by Hariom Chaurasiya on 06/11/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textname: UITextField!
    @IBOutlet weak var textemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func continueButton(_ sender: UIButton) {
        let sec:SecondViewController = self.storyboard?.instantiateViewController(identifier: "Second") as! SecondViewController
        
        sec.strname = textname.text
        sec.stremail = textemail.text
        
        self.navigationController?.pushViewController(sec, animated: true)
        
    }
    
}

