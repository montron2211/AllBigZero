//
//  ViewController.swift
//  Kien Self-Sizing 1
//
//  Created by duycuong on 11/21/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataForTableView = [("I have not failed. I've just found 10,000 ways that won't work.","Thomas A. Edison"), ("A man is but the product of his thoughts. What he thinks, he becomes.","Mahatma Gandhi"), ("Amateurs sit and wait for inspiration, the rest of us just get up and go to work."," Stephen King"), ("Wisdom is not a product of schooling but of the lifelong attempt to acquire it.","Albert Einstein")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Delegate and Datasource methods of a tableView
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "CellID"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? QuotesTableViewCell
        
        cell?.quoteLabel.text = self.dataForTableView[indexPath.row].0
        cell?.authorLabel.text = self.dataForTableView[indexPath.row].1
        
        return cell!
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataForTableView.count
    }
    
    
}

