//
//  ViewController.swift
//  CustomTableViewWithDataPassingDemo
//
//  Created by Hariom Chaurasiya on 08/11/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tblview: UITableView!
    
    var array1 = ["1","2","3","4","5"]
    var array2 = ["10","20","30","40","50"]
    var arrimg = [UIImage(named: "facebook image"),UIImage(named: "facebook image"),UIImage(named: "facebook image"),UIImage(named: "facebook image"),UIImage(named: "paytmimages")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        c.label1.text = array1[indexPath.row]
        c.label2.text = array2[indexPath.row]
        c.img.image = arrimg[indexPath.row]
        return c
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.view.backgroundColor = UIColor.red
        
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strlbl1 = array1[indexPath.row]
        detail.strlbl2 = array2[indexPath.row]
        detail.strimg = arrimg[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            tblview.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
}

