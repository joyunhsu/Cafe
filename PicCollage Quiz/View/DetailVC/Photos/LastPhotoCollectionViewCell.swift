//
//  LastPhotoCollectionViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class LastPhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func layoutView(image: String, count: Int) {
        
        imageView.image = UIImage(named: image)
        
        photoCountLabel.text = "\(count) Photos"
    }

}
