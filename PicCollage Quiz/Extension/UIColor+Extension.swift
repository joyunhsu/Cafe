//
//  UIColor+Extension.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

private enum CafeColor: String {
    
    case Blue
    
    case Green
    
    case B1
    
    case B2
    
    case B3
}

extension UIColor {
    
    static let Blue = CafeColor(.Blue)
    
    static let Green = CafeColor(.Green)
    
    static let B1 = CafeColor(.B1)
    
    static let B2 = CafeColor(.B2)
    
    static let B3 = CafeColor(.B3)
    
    private static func CafeColor(_ color: CafeColor) -> UIColor? {
        
        return UIColor(named: color.rawValue)
    }
}
