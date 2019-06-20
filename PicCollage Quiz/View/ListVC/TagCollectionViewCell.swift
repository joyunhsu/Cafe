//
//  TagCollectionViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func layoutView(text: String, color: UIColor, textColor: UIColor) {
        
        label.text = text
        
        label.textColor = textColor
        
        backgroundColor = color
    }
    
}
