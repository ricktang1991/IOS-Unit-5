//
//  MenuItem.swift
//  Lab5
//
//  Created by 桑染 on 2020-05-20.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case detailText = "description"
        case price = "price"
        case category = "category"
        case imageURL = "image_url"
    }
}

struct MenuItems: Codable {
    let items: [MenuItem]
}
