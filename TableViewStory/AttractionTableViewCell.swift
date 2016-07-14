//
//  AttractionTableViewCell.swift
//  TableViewStory
//
//  Created by JHJG on 2016. 7. 4..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {

    @IBOutlet var attractionImage: UIImageView!
    @IBOutlet var attractionLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
