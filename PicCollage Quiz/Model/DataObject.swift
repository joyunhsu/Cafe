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
    let reviewCount: Int
    let distance: String
    let isMarked: Bool
    let overview: Overview
    let reviews: Reviews
    let photos: [String]
    let suggestions: [Suggestion]
    
    enum CodingKeys: String, CodingKey {
        case reviewCount = "review_count"
        case title, region, rating, distance, isMarked, overview, reviews, photos, suggestions
    }
}

struct Overview: Codable {
    let timeLimit: Double
    let averageCost: String
    let isOpen: Bool
    let address: String
    let phone: String
    let website: String
    let features: Feature
    
    enum CodingKeys: String, CodingKey {
        case timeLimit = "time_limit"
        case averageCost = "average_cost"
        case isOpen, address, phone, website, features
    }
}

struct Feature: Codable {
    
}

struct Reviews: Codable {
    
}

struct Suggestion: Codable {
    let title, region: String
    let rating: Double
}
