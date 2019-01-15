//
//  ViewController.swift
//  Kien ReuseCell 3
//
//  Created by duycuong on 11/21/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //mark: properties
    
    @IBOutlet weak var tableView: UITableView!
    
    var numbers = Array(0...100)
    
    var listName = [String]()
    
    func addNames() {
        for i in 0...100 {
            listName.append("Cuong Ngu L*n \(i)")
        }
    }
    
    var numberOfCell: Int = 0 {
        didSet {
            title = "So Cell: \(numberOfCell)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addNames()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = Subtitle(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
            numberOfCell += 1
        }
        cell?.textLabel?.text = String(numbers[indexPath.row])
        
        if indexPath.row % 10 == 0 {
            cell?.detailTextLabel?.text = listName[indexPath.row]
            cell?.tintColor = UIColor.purple
            cell?.backgroundColor = UIColor.yellow
        }
        return cell!
    }
    
    

}

