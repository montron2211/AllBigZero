//
//  dataString.swift
//  kienDisplay2
//
//  Created by duycuong on 11/6/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class DataSourceString: NSObject, UITableViewDataSource {
    
    var listNames = ["Kien", "Cuong"]
    var delegateString: TableViewController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNames.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = listNames[indexPath.row]
        delegateString?.noData = ( listNames.count == 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            listNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            delegateString?.noData = (listNames.count == 0)
        }
    }

    
}

