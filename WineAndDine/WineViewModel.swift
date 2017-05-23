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

    func getWineName(at index: IndexPath) -> String {
        return wineList[index.row].category!
    }
    
    func getFoodPairings(at index: IndexPath) -> [String] {
        return wineList[index.row].foods!
    }
}
