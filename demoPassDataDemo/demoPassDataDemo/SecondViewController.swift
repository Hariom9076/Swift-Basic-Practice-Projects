//
//  SecondViewController.swift
//  demoPassDataDemo
//
//  Created by Hariom Chaurasiya on 07/11/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var labelemail: UILabel!
    
    var strname: String! = nil
    var stremail: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelname.text = strname
        labelemail.text = stremail
    }
    

   
}
