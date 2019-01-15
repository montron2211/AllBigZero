//
//  ViewController.swift
//  Kien Self-Sizing
//
//  Created by duycuong on 12/1/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataForTableView = [("I have not failed. I’ve just found 10,000 ways that won’t work.","Thomas A. Edison"),("A man is but the product of his thoughts. What he thinks, he becomes.","Stephen King"),("Finish each day and be done with it. You have done what you could. Some blunders and absurdities no doubt crept in; forget them as soon as you can. Tomorrow is a new day. You shall begin it serenely and with too high a spirit to be encumbered with your old nonsense.","Ralph Waldo Emerson")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tableView.rowHeight = UITableView.automaticDimension

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Delegate and Datasource methods of a tableView
    
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        
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

