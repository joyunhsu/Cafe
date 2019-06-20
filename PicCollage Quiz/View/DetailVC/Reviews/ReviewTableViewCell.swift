//
//  ReviewTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var timeRateLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func layoutView(reviewContent: Review) {
        
        userImageView.image = UIImage(named: reviewContent.user)
        
        timeRateLabel.text = "\(reviewContent.month) \(reviewContent.year) | \(reviewContent.rating)"
        
        reviewLabel.text = reviewContent.review
    }
    
}
