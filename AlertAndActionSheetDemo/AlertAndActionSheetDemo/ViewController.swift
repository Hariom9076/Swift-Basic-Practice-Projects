//
//  ViewController.swift
//  AlertAndActionSheetDemo
//
//  Created by Hariom Chaurasiya on 01/11/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func alertaction(_ sender: UIButton) {
        //alert button
        let alert = UIAlertController(title: "My Title here", message: "My Message Here", preferredStyle: .alert)
        
        // addition of textfield on alert button
        alert.addTextField{ (textfield) in
            textfield.placeholder = "Enter your name"
            
        }
        
        let cancelbutton = UIAlertAction(title: "Cancel Button" , style: .cancel)
        { (action) in
            print("Cancel Button")
            // when you click on cancel button it will print the textfield
            print(alert.textFields?.first?.text ?? <#default value#>)
            
        }
        let defaultbutton = UIAlertAction(title: "Default Button" , style: .default)
        { (action) in
            print("Default Button")
            
        }
        let destructivebutton = UIAlertAction(title: "Destructive button", style: .destructive)
        { (action) in
            print("Destructive Button")
            
        }
        alert.addAction(destructivebutton)
        alert.addAction(defaultbutton)
        alert.addAction(cancelbutton)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionsheet(_ sender: UIButton) {
        //actionsheet button
        let sheet = UIAlertController(title: "My title here", message: "My message here", preferredStyle: .actionSheet)
        let cancelbutton = UIAlertAction(title: "Cancel Button" , style: .cancel)
        { (action) in
            print("Cancel Button")
            
        }
        let defaultbutton = UIAlertAction(title: "Default Button" , style: .default)
        { (action) in
            print("Default Button")
            
        }
        let destructivebutton = UIAlertAction(title: "Destructive button", style: .destructive)
        { (action) in
            print("Destructive Button")
            
        }
        sheet.addAction(destructivebutton)
        sheet.addAction(defaultbutton)
        sheet.addAction(cancelbutton)
        present(sheet, animated: true, completion: nil)
    }
    
    
}

