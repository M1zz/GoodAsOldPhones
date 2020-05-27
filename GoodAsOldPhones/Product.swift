//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by 이현호 on 2020/05/26.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import Foundation

struct Product {
    var name: String?
    var cellImageName: String?
    var fullscreenImageName: String?
    
    init(name: String, cellImageName: String, fullscreenImageName: String) {
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
}
