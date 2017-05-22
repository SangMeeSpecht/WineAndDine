//
//  Wine.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/22/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Foundation

class Wine {
    let category: String?
    let name: String?
    let foods: [String]?
    
    init(category: String, name: String, foods: [String]) {
        self.category = category
        self.name = name
        self.foods = foods
    }
}
