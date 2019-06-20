//
//  FeatBtnTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class FeatBtnTableViewCell: UITableViewCell {
    
    @IBOutlet weak var powerPlugBtn: UIButton!
    @IBOutlet weak var kidBtn: UIButton!
    @IBOutlet weak var wifiBtn: UIButton!
    @IBOutlet weak var petsBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func layoutView(cafe: Cafe) {
        
        let feature = cafe.overview.features
        powerPlugBtn.isEnabled = feature.powerPlug
        kidBtn.isEnabled = feature.kidFriendly
        wifiBtn.isEnabled = feature.wifi
        petsBtn.isEnabled = feature.petsAllowed
    }
    
}
