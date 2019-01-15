//
//  PhatViewController.swift
//  KienNoti2
//
//  Created by duycuong on 11/14/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class PhatViewController: UIViewController {

    @IBOutlet weak var phatTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func phatButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .dataDangKy, object: phatTextField.text)
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
