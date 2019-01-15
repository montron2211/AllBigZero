//
//  dataInt.swift
//  kienDisplay2
//
//  Created by duycuong on 11/6/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class DataSourceInt: NSObject, UITableViewDataSource {
    
    var numbers = [1, 2]
    var delegateInt: TableViewController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return numbers.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(numbers[indexPath.row])
        delegateInt?.noData = (numbers.count == 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            numbers.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            delegateInt?.noData = (numbers.count == 0)
        }
    }
    
}
