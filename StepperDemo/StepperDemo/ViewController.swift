//
//  ViewController.swift
//  StepperDemo
//
//  Created by Hariom Chaurasiya on 29/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChanged(_ sender: UIStepper) {
        label.text = Int(sender.value).description
    }
    
}

