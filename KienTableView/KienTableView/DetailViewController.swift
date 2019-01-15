//
//  ViewController.swift
//  KienTableView
//
//  Created by duycuong on 11/19/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    
    
    var dataText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if dataText != nil {
            dataTextField.text = dataText
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataText = dataTextField.text
    }

}

