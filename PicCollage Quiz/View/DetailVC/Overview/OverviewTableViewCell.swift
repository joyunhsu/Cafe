//
//  OverviewTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit
import Cosmos

class OverviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var timeLimitLabel: UILabel!
    @IBOutlet weak var averageCostLabel: UILabel!
    @IBOutlet weak var openHourLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
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
    
    func layoutView(cafe: Cafe) {
        regionLabel.text = cafe.region
        titleLabel.text = cafe.title
        cosmosView.rating = cafe.rating
        ratingLabel.text = "\(cafe.rating)"
        
        let overView = cafe.overview
        timeLimitLabel.text = overView.timeLimit
        averageCostLabel.text = "$\(overView.averageCost)"
        addressLabel.text = overView.address
    }
}
