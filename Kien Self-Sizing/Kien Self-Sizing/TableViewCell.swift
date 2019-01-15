//
//  QuotesTableViewCell.swift
//  Kien Self-Sizing
//
//  Created by duycuong on 12/1/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var quoteLabel: UILabel!
    

    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
    
}
