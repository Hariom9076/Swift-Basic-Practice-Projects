//
//  ViewController.swift
//  TableViewMultipleCellSelection
//
//  Created by Hariom Chaurasiya on 09/11/25.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var tableView: UITableView!
    var arrData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.isEditing = true
        self.tableView.allowsMultipleSelectionDuringEditing = true
    }
  
    func getData(){
        arrData = ["Hello 1","Hello 2","Hello 3","Hello 4","Hello 5",
                   "Hello 6","Hello 7","Hello 8","Hello 9","Hello 10"]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        c.textLabel?.text = arrData[indexPath.row]
        return c
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(tableView: tableView, indexPath: indexPath)
        print("select")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(tableView: tableView, indexPath: indexPath)
        print("deselect")
    }
}

extension ViewController{
    
    // select and deselect tableviewcell
    func selectDeselectCell(tableView: UITableView, indexPath: IndexPath){
        
    }
}
