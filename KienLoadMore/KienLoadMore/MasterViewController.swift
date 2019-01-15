//
//  ViewController.swift
//  KienLoadMore
//
//  Created by duycuong on 11/15/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listNames = ["Phuong Anh", "Linh"]
    @IBOutlet weak var tableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listNames[indexPath.row]
        if indexPath.row == self.listNames.count - 1 {
            //loadData()
            listNames.append("Row \(String(indexPath.row))")
            tableView.reloadData()
        }
        return cell
        
    }
    
//    func loadData() {
//        listNames.append("Mai")
//    }
    
    
}

