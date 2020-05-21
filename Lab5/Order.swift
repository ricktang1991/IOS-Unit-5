//
//  Order.swift
//  Lab5
//
//  Created by 桑染 on 2020-05-20.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
