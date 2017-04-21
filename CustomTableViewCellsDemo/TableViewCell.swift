//
//  TableViewCell.swift
//  CustomTableViewCellsDemo
//
//  Created by David Mills on 2017-04-20.
//  Copyright © 2017 David Mills. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nameLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
