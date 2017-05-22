//
//  WineModelSpec.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/22/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
@testable import WineAndDine

class FoodModelSpec: QuickSpec {
    override func spec() {
        var wineModel: Wine?
        
        beforeEach {
            wineModel = WineAndDine.Wine(category: "Light Dry Wine",
                                         name: "Sauvignon Blanc",
                                         foods: ["Green Veggies", "Fish"])
        }
        
        describe(".category") {
            it("returns the type of wine") {
                expect(wineModel?.category).to(equal("Light Dry Wine"))
            }
        }
        
        describe(".name") {
            it("returns name of the wine") {
                expect(wineModel?.name).to(equal("Sauvignon Blanc"))
            }
        }
        
        describe(".foods") {
            it("returns a list of foods") {
                expect(wineModel?.foods?[0]).to(equal("Green Veggies"))
            }
        }
    }
}
