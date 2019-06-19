//
//  SegmentHeaderView.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class SegmentHeaderView: UIView {
    
    @IBOutlet var headerView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        Bundle.main.loadNibNamed(String(describing: SegmentHeaderView.self), owner: self, options: nil)
        self.addSubview(self.headerView)
    }

}
