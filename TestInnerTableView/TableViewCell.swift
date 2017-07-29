//
//  TableViewCell.swift
//  TestInnerTableView
//
//  Created by Joan Angb on 30/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var labl: UILabel!
    @IBOutlet weak var btn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
