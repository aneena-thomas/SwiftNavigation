//
//  detailTableViewCell.swift
//  SwiftNav
//
//  Created by Aneena Susan Thomas on 03/11/15.
//  Copyright © 2015 Aneena Susan Thomas. All rights reserved.
//

import UIKit

class detailTableViewCell: UITableViewCell {
    @IBOutlet weak var detailimg: UIImageView!

   
    @IBOutlet weak var detaillbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  

}
