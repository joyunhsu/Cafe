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
        case title, region, rating, distance, isMarked
        case overview, reviews, photos, suggestions
    }
}

struct Overview: Codable {
    let timeLimit: String
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
    let powerPlug: Bool
    let kidFriendly: Bool
    let wifi: Bool
    let petsAllowed: Bool
    
    enum CodingKeys: String, CodingKey {
        case powerPlug = "power_plug"
        case kidFriendly = "kid_friendly"
        case wifi
        case petsAllowed = "pets_allowed"
    }
}

struct Reviews: Codable {
    let ratings: Rating
    let displayReview: [Review]
    
    enum CodingKeys: String, CodingKey {
        case displayReview = "display_review"
        case ratings
    }
}

struct Rating: Codable {
    let reviewCount: Int
    let average: Double
    let coffee: Double
    let location: Double
    let environment: Double
    let service: Double
    let value: Double
    
    enum CodingKeys: String, CodingKey {
        case reviewCount = "review_count"
        case average, coffee, location, environment, service, value
    }
}

struct Review: Codable {
    let user: String
    let month: String
    let year: String
    let rating: Double
    let review: String
}

struct Suggestion: Codable {
    let title, region: String
    let rating: Double
    let photo: String
    let distance: String
    let reviewCount: Int
    
    enum CodingKeys: String, CodingKey {
        case reviewCount = "review_count"
        case title, region, rating
        case photo, distance
    }
}
