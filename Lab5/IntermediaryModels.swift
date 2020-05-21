//
//  IntermediaryModels.swift
//  Lab5
//
//  Created by 桑染 on 2020-05-20.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
