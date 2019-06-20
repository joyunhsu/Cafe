//
//  OverviewTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class OverviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var directionBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        directionBtn.setTitle("Directions\n5 min walk", for: .normal)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
