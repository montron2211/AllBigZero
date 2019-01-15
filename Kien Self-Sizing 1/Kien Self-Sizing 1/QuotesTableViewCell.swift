//
//  QuotesTableViewCell.swift
//  Kien Self-Sizing 1
//
//  Created by duycuong on 11/27/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class QuotesTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
}
