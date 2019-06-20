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
    
    func layoutView(power: Bool, kidFriendly: Bool, wifi: Bool, pets: Bool) {
        powerPlugBtn.isEnabled = power
        kidBtn.isEnabled = kidFriendly
        wifiBtn.isEnabled = wifi
        petsBtn.isEnabled = pets
    }
    
}
