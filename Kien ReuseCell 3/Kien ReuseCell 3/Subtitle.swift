//
//  Subtitle.swift
//  Kien ReuseCell 3
//
//  Created by duycuong on 11/21/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class Subtitle: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //reset Cell before reuse
    override func prepareForReuse() {
        textLabel?.text = "Oc Cho"
        detailTextLabel?.text = "Oc Cho"
        backgroundColor = UIColor.gray
    }
    
}
