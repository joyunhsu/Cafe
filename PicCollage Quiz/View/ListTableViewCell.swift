//
//  ListTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit
import Cosmos

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cafeImage: UIImageView!
    @IBOutlet weak var cafeTitle: UILabel!
    @IBOutlet weak var rateView: CosmosView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
