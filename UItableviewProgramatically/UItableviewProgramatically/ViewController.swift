//
//  ViewController.swift
//  UItableviewProgramatically
//
//  Created by Hariom Chaurasiya on 10/11/25.
//

import UIKit

struct Data {
    var name : String
    var isEnabled : Bool
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    
    
    @IBOutlet weak var tableView: UITableView!
    //    var arrData = ["One","Two","Three"]
    
    var data : [Data] = [
        Data(name: "Hariom", isEnabled: false),
        Data(name: "Amandeep", isEnabled: false),
        Data(name: "Ayush", isEnabled: false),
        Data(name: "Rahul", isEnabled: false),
        Data(name: "Anurag", isEnabled: false),
        Data(name: "Sachin", isEnabled: false),
        Data(name: "Deepak", isEnabled: false),
        Data(name: "Arun", isEnabled: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let c = tableView.dequeueReusableCell(withIdentifier: "cell" , for : indexPath) as! Mycell
        c.nameLabel.text = data[indexPath.row].name
        return c
    }
    
    
}

