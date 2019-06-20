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
    }
    
}
