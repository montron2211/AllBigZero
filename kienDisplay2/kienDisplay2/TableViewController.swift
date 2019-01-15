//
//  TableViewController.swift
//  kienDisplay2
//
//  Created by duycuong on 11/6/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dataString = DataSourceString()
    var dataInt = DataSourceInt()
    
    @IBOutlet weak var noDataImage: UIImageView!
    @IBOutlet weak var switchState: UISwitch!
    
    @IBOutlet weak var hasDataImage: UIImageView!
    
    var noData: Bool = true {
        didSet {
            noData ? (tableView.tableFooterView = noDataImage) : (tableView.tableFooterView = hasDataImage)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataString
        dataInt.delegateInt = self
        dataString.delegateString = self
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        noData = switchState.isOn ? (dataString.listNames.count == 0) : (dataInt.numbers.count == 0)
        noData ? (tableView.tableFooterView = noDataImage) : (tableView.tableFooterView = hasDataImage)
        tableView.reloadData()
    }

    
    @IBAction func switchAction(_ sender: UISwitch) {
        switchState.isOn ? (tableView.dataSource = dataString) : (tableView.dataSource = dataInt)
        
        
        noData = switchState.isOn ? (dataString.listNames.count == 0) : (dataInt.numbers.count == 0)
        noData ? (tableView.tableFooterView = noDataImage) : (tableView.tableFooterView = hasDataImage)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                destination.dataText = switchState.isOn ? (dataString.listNames[indexPath.row]) : (String(dataInt.numbers[indexPath.row]))
//                if switchState.isOn {
//                    destination.dataText = dataString.listNames[indexPath.row]
//                } else {
//                    destination.dataText = String(dataInt.numbers[indexPath.row])
//                }
            }
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        if let source = unwindSegue.source as? ViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                switchState.isOn ? (dataString.listNames[indexPath.row] = source.dataText!) : (dataInt.numbers[indexPath.row] = Int(source.dataText!) ?? 0)
            } else {
                switchState.isOn ? (dataString.listNames.append(source.dataText!)) : (dataInt.numbers.append(Int(source.dataText!) ?? 0))
            }
        }
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

 
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
