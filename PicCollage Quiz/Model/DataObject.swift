//
//  DataModel.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import Foundation

struct CafeData: Codable {
    let data: [Cafe]
}

struct Cafe: Codable {
    let title, region: String
    let rating: Double
    let isMarked: Bool
    let overview: Overview
    let reviews: Reviews
    let photos: [String]
    let suggestions: [Suggestion]
}

struct Overview: Codable {
    
}

struct Reviews: Codable {
    
}

struct Suggestion: Codable {
    let title, region: String
    let rating: Double
}
