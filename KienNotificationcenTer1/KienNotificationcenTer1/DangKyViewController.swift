//
//  ViewController.swift
//  KienNotificationcenTer1
//
//  Created by duycuong on 11/14/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let dataText1 = Notification.Name("key1")
}

class DangKyViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(dangKy(notification:)), name: .dataText1, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @objc func dangKy(notification: NSNotification) {
        nameLabel.text = notification.object as? String
    }

}

