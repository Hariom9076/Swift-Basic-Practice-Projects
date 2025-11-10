//
//  ViewController.swift
//  CustomTableViewDemo
//
//  Created by Hariom Chaurasiya on 07/11/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array1 = [
        "Apple", "Banana", "Cherry", "Mango", "Pineapple",
        "Grapes", "Orange", "Strawberry", "Watermelon", "Papaya",
        "Peach", "Blueberry", "Kiwi", "Guava", "Plum",
        "Apricot", "Lychee", "Fig", "Coconut", "Pomegranate"
    ]
    var array2 = ["apple", "banana", "cherry", "mango", "pineapple",
                  "grapes", "orange", "strawberry", "watermelon", "papaya",
                  "peach", "blueberry", "kiwi", "guava", "plum",
                  "apricot", "lychee", "fig", "coconut", "pomegranate"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = tableView.dequeueReusableCell(withIdentifier: "cell")
        c?.textLabel?.text = array1[indexPath.row]
        c?.detailTextLabel?.text = array2[indexPath.row]
        return c!
        
    }

}

