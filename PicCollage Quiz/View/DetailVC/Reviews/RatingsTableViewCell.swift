//
//  RatingsTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit
import Cosmos

class RatingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var reviewCount: UILabel!
    @IBOutlet weak var averageRating: CosmosView!
    @IBOutlet weak var coffeeRating: CosmosView!
    @IBOutlet weak var locationRating: CosmosView!
    @IBOutlet weak var environmentRating: CosmosView!
    @IBOutlet weak var serviceRating: CosmosView!
    @IBOutlet weak var valueRating: CosmosView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func layoutView(review: Int, average: Double, coffee: Double, location: Double, envir: Double, service: Double, value: Double) {
        
        reviewCount.text = "\(review) Reviews"
        
        averageRating.rating = average
        
        coffeeRating.rating = coffee
        
        locationRating.rating = location
        
        environmentRating.rating = envir
        
        serviceRating.rating = service
        
        valueRating.rating = value
    }
    
}
