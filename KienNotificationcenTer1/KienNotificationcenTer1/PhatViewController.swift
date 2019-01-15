//
//  PhatViewController.swift
//  KienNotificationcenTer1
//
//  Created by duycuong on 11/14/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

//extension Notification.Name {
//    static let dataText1 = Notification.Name("key1")
//}

class PhatViewController: UIViewController {
    
    //@IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var phatTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //NotificationCenter.default.addObserver(self, selector: #selector(dangKy(notification:)), name: .dataText1, object: nil)
        //NotificationCenter.default.post(name: .dataText1, object: nil)
    }
    
    @IBAction func phatButton(_sender: Any) {
        NotificationCenter.default.post(name: .dataText1, object: phatTextField.text)
        dismiss(animated: true, completion: nil)
    }
    
    
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }
//
//    @objc func dangKy(notification: NSNotification) {
//        namelabel.text = notification.object as? String
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
