//
//  DataService.swift
//  kienDisplay2
//
//  Created by duycuong on 11/6/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class DataSourceNumbers: NSObject, UITableViewDataSource {
    var numbers = [Int](1...4)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(numbers[indexPath.row])
        return cell
    }
    
    
}
