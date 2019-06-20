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
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var briefLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func layoutView(cafe: Cafe) {
        
        cafeImage.image = UIImage(named: cafe.photos[0])
        cafeTitle.text = cafe.title
        rateView.rating = cafe.rating
        ratingLabel.text = String(cafe.rating)
        briefLabel.text = "\(cafe.region)  \(cafe.distance)  \(cafe.reviewCount) Reviews"
        
        statusColor(isOpen: cafe.overview.isOpen)
    }
    
    func layoutView(suggestion: Suggestion) {
        
        cafeImage.image = UIImage(named: suggestion.photo)
        cafeTitle.text = suggestion.title
        rateView.rating = suggestion.rating
        ratingLabel.text = String(suggestion.rating)
        briefLabel.text = "\(suggestion.region)  \(suggestion.distance)  \(suggestion.reviewCount) Reviews"
        
        statusColor(isOpen: suggestion.isOpen)
    }
    
    private func statusColor(isOpen: Bool) {
        
        if isOpen {
            statusLabel.layer.borderColor = UIColor.Green!.cgColor
            statusLabel.textColor = UIColor.Green!
            statusLabel.text = "Open"
        } else {
            statusLabel.layer.borderColor = UIColor.B2!.cgColor
            statusLabel.textColor = UIColor.B2!
            statusLabel.text = "Closed"
        }
    }
    
}
