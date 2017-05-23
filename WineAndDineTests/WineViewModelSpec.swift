//
//  WineViewModelSpec.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/23/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
@testable import WineAndDine

class WineViewModelSpec: QuickSpec {
    override func spec() {
        var wineViewModel: WineViewModel?
        
        beforeEach {
            let wine1 = Wine(category: "Dessert Wine", foods: ["Soft Cheese", "Cured & Smoked Meat", "Dessert"])
            let wine2 = Wine(category: "Rich White", foods: ["Roasted Veggies", "Rich Fish", "White Meat"])
            let wineList = [wine1, wine2]
            wineViewModel = WineAndDine.WineViewModel(wineList: wineList)
        }
        
        describe(".wineCount") {
            it("counts the number of wines") {
                expect(wineViewModel?.wineCount()).to(equal(2))
            }
        }
        
        describe(".getWineName") {
            it("returns the name of the wine at a particular row") {
                let indexPath = IndexPath(row: 1, section: 0)
                expect(wineViewModel?.getWineName(at: indexPath)).to(equal("Rich White"))
            }
        }
        
        describe(".getFoodPairings") {
            it("lists food pairings for particular wine") {
                let indexPath = IndexPath(row: 0, section: 0)
                expect(wineViewModel?.getFoodPairings(at: indexPath)).to(equal(["Soft Cheese", "Cured & Smoked Meat", "Dessert"]))
            }
        }
    }
}
