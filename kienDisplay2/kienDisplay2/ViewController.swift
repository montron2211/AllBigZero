//
//  ViewController.swift
//  kienDisplay2
//
//  Created by duycuong on 11/6/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewTextField: UITextField!
    var dataText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataText != nil {
            viewTextField.text = dataText!
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataText = viewTextField.text
    } 
    
}

