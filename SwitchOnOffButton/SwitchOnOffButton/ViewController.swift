//
//  ViewController.swift
//  SwitchOnOffButton
//
//  Created by Hariom Chaurasiya on 29/10/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        if switch1.isOn{
            label.text = "switch is ON"
            self.view.backgroundColor = UIColor.green
        }else{
            label.text = "switch is OFF"
            self.view.backgroundColor = UIColor.red
            
        }
    }
    
}

