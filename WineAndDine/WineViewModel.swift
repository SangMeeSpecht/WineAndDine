//
//  File.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/23/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Foundation
import UIKit

class WineViewModel {
    let wineList: [Wine]
    
    init(wineList: [Wine]) {
        self.wineList = wineList
    }
    
    func wineCount() -> Int {
        return wineList.count
    }
    
    func foodCount(for wineName: String) -> Int {
        for wine in wineList {
            if wine.category == wineName {
                return wine.foods!.count
            }
        }
        return 0
    }

    func getWineName(at index: IndexPath) -> String {
        return wineList[index.row].category!
    }
    
    func getFoodPairings(for wineName: String) -> [String] {
        for wine in wineList {
            if wine.category == wineName {
                return wine.foods!
            }
        }
        return []
    }
}
